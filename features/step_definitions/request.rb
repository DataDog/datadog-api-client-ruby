module APIWorld
  def api
    Object.const_get("DatadogAPIClient::V#{@api_version}")
  end

  def unique
    now = Time.now
    scenario_name = @scenario.name.gsub(/[^A-Za-z0-9]+/, '-')[0..100]
    @unique ||= "ruby-#{scenario_name}-#{now.to_i}"
  end

  def fixtures
    @fixtures ||= { "unique": unique, "unique_lower": unique.downcase }
  end

  def opts
    @opts ||= {}
  end

  def create_user
    api_instance = DatadogAPIClient::V2::UsersApi.new

    user = DatadogAPIClient::V2::UserCreateRequest.new
    user.data = DatadogAPIClient::V2::UserCreateData.new
    user.data.type = "users"
    user.data.attributes = DatadogAPIClient::V2::UserCreateAttributes.new
    user.data.attributes.email = "#{unique}@datadoghq.com"

    response = api_instance.create_user_with_http_info({
      body: user
    })
    @undo << lambda { undo_create_user(response) }
    response[0]
  end

  def undo_create_user(response)
    api_instance = DatadogAPIClient::V2::UsersApi.new
    api_instance.disable_user(response[0].data.id)
  end

  def create_role
    api_instance = DatadogAPIClient::V2::RolesApi.new

    role = DatadogAPIClient::V2::RoleCreateRequest.new
    role.data = DatadogAPIClient::V2::RoleCreateData.new
    role.data.type = "roles"
    role.data.attributes = DatadogAPIClient::V2::RoleCreateAttributes.new
    role.data.attributes.name = unique

    response = api_instance.create_role_with_http_info({
      body: role
    })
    @undo << lambda { undo_create_role(response) }
    response[0]
  end

  def undo_create_role(response)
    api_instance = DatadogAPIClient::V2::RolesApi.new
    api_instance.delete_role(response[0].data.id)
  end

  def create_service
    api_instance = DatadogAPIClient::V2::ServicesApi.new

    service_create_request = DatadogAPIClient::V2::ServiceCreateRequest.new
    service_create_request.data = DatadogAPIClient::V2::ServiceCreateData.new
    service_create_request.data.type = "services"
    service_create_request.data.attributes = DatadogAPIClient::V2::ServiceCreateAttributes.new
    service_create_request.data.attributes.name = unique

    response = api_instance.create_service_with_http_info(service_create_request)
    @undo << lambda { undo_create_service(response) }
    response[0]
  end

  def undo_create_service(response)
    api_instance = DatadogAPIClient::V2::ServicesApi.new
    api_instance.delete_service(response[0].data.id)
  end

  def create_team
    api_instance = DatadogAPIClient::V2::TeamsApi.new

    team_create_request = DatadogAPIClient::V2::TeamCreateRequest.new
    team_create_request.data = DatadogAPIClient::V2::TeamCreateData.new
    team_create_request.data.type = "teams"
    team_create_request.data.attributes = DatadogAPIClient::V2::TeamCreateAttributes.new
    team_create_request.data.attributes.name = unique

    response = api_instance.create_team_with_http_info(team_create_request)
    @undo << lambda { undo_create_team(response) }
    response[0]
  end

  def undo_create_team(response)
    api_instance = DatadogAPIClient::V2::TeamsApi.new
    api_instance.delete_team(response[0].data.id)
  end

  def create_permission
    api_instance = DatadogAPIClient::V2::RolesApi.new

    response = api_instance.list_permissions
    response.data[0]
  end

  def skip_undo?(method)
    method.to_s.start_with?(
      "undo_add_",
      "undo_get_",
      "undo_list_",
      "undo_disable_",
      "undo_delete_",
      "undo_remove_",
      "undo_update_",
      "undo_send_invitations",
    )
  end

  def missing_method(method, *args, &block)
    super unless skip_undo? method
  end

  def respond_to_missing?(method, *)
    skip_undo?(method) || super
  end
end

World(APIWorld)


Given('a valid "apiKeyAuth" key in the system') do
  api.configure.api_key['DD-API-KEY'] = ENV["DD_TEST_CLIENT_API_KEY"]
  # TODO api.configure.api_key['apiKeyAuth'] = ENV["DD_TEST_CLIENT_API_KEY"]
end

Given('a valid "appKeyAuth" key in the system') do
  api.configure.api_key['DD-APPLICATION-KEY'] = ENV["DD_TEST_CLIENT_APP_KEY"]
  # TODO api.configure.api_key['appKeyAuth'] = ENV["DD_TEST_CLIENT_APP_KEY"]
end

Given(/^an instance of "([^"]+)" API$/) do |api_name|
  api.configure.debugging = ENV["DEBUG"].present?
  @api_instance = api.const_get("#{api_name}Api").new
end

Given('operation {string} enabled') do |name|
  log "TODO enable #{name.underscore}"
end

Given(/^body (.*)$/) do |body|
  opts[:body] = JSON.parse(body.templated fixtures)
end

Given(/^request contains "([^"]+)" parameter from "([^"]+)"$/) do |parameter_name, fixture_path|
  opts[parameter_name.to_sym] = fixtures.lookup(fixture_path)
end

Given(/^new "([^"]+)" request$/) do |name|
  @api_method = @api_instance.method("#{name.underscore}_with_http_info".to_sym)
end

When('the request is sent') do
  params = @api_method.parameters.select { |p| p[0] == :req }.map { |p| opts.delete(p[1]) }
  undo_name = "undo_#{@api_method.name.to_s.chomp('_with_http_info')}".to_sym
  undo = self.method undo_name  # fail early on missing undo method
  @response = @api_method.call(*params, opts)
  @undo << lambda { undo.call @response } unless skip_undo? undo_name
end

Then(/^the response "([^"]+)" is equal to (.*)$/) do |response_path, value|
  expect(@response[0].lookup response_path).to eq JSON.parse(value.templated fixtures)
end

Then(/^the response status is (\d+) (.*)$/) do |status, msg|
  expect(@response[1]).to eq status.to_i
end

Then(/the response "([^"]+)" is false/) do |response_path|
  expect(@response[0].lookup response_path).to be false
end

Then(/^the response "([^"]+)" has the same value as "(.*)"$/) do |response_path, fixture_path|
  expect(@response[0].lookup response_path).to eq fixtures.lookup(fixture_path)
end

Given('there is a valid {string} in the system') do |name|
  fixtures[name.to_sym] = self.send("create_#{name}".to_sym)
end

require 'json'

module APIWorld
  def api
    Object.const_get("DatadogAPIClient::V#{@api_version}")
  end

  def configuration
    @configuration ||= api.const_get("Configuration").new
  end

  def api_client
    @api_client ||= api.const_get("ApiClient").new configuration
  end

  def unique
    now = Time.now
    scenario_name = @scenario.name.gsub(/[^A-Za-z0-9]+/, '_')[0..100]
    @unique ||= "ruby-#{scenario_name}-#{now.to_i}"
  end

  def fixtures
    @fixtures ||= { "unique": unique, "unique_lower": unique.downcase }
  end

  def opts
    @opts ||= {}
  end

  def undo_operations
    return @undo_operations if @undo_operations
    undo_path = File.join(__dir__, '..', "v#{@api_version}", 'undo.json')
    @undo_operations ||= JSON.parse(File.read(undo_path)).map{
      |operation_id, settings| [operation_id.snakecase, settings["undo"]]
    }.to_h
  end

  def build_undo_for(operation_id, api_instance = nil)
    raise "missing x-undo for #{operation_id}" unless undo_operations.key? operation_id

    operation = undo_operations[operation_id]
    raise "update x-undo for #{operation_id}" unless operation["type"]

    return if operation["type"] != "unsafe"

    api_instance ||= @api_instance
    operation_name = operation["operationId"].underscore
    method = api_instance.method("#{operation_name}_with_http_info".to_sym)

    lambda do |response|
      args = operation["parameters"].each{ |p| response.lookup(p["source"]) }

      configuration.unstable_operations[operation_name.snakecase.to_sym] = true
      lambda { method.call(*args) }
    end
  end

  def create_user
    api_instance = DatadogAPIClient::V2::UsersApi.new api_client

    user = DatadogAPIClient::V2::UserCreateRequest.new
    user.data = DatadogAPIClient::V2::UserCreateData.new
    user.data.type = "users"
    user.data.attributes = DatadogAPIClient::V2::UserCreateAttributes.new
    user.data.attributes.email = "#{unique}@datadoghq.com"

    undo_builder = build_undo_for(__method__.to_s, api_instance)
    response = api_instance.create_user_with_http_info(user)
    @undo << undo_builder.call(response[0]) if undo_builder
    response[0]
  end

  def create_role
    api_instance = DatadogAPIClient::V2::RolesApi.new api_client

    role = DatadogAPIClient::V2::RoleCreateRequest.new
    role.data = DatadogAPIClient::V2::RoleCreateData.new
    role.data.type = "roles"
    role.data.attributes = DatadogAPIClient::V2::RoleCreateAttributes.new
    role.data.attributes.name = unique

    undo_builder = build_undo_for(__method__.to_s, api_instance)
    response = api_instance.create_role_with_http_info(role)
    @undo << undo_builder.call(response[0]) if undo_builder
    response[0]
  end

  def create_incident
    configuration.unstable_operations[:create_incident] = true
    api_instance = DatadogAPIClient::V2::IncidentsApi.new api_client

    incident_create_request = DatadogAPIClient::V2::IncidentCreateRequest.new
    incident_create_request.data = DatadogAPIClient::V2::IncidentCreateData.new
    incident_create_request.data.type = "incidents"
    incident_create_request.data.attributes = DatadogAPIClient::V2::IncidentCreateAttributes.new
    incident_create_request.data.attributes.title = unique

    undo_builder = build_undo_for(__method__.to_s, api_instance)
    response = api_instance.create_incident_with_http_info(incident_create_request)
    @undo << undo_builder.call(response[0]) if undo_builder
    response[0]
  end

  def create_service
    configuration.unstable_operations[:create_incident_service] = true
    api_instance = DatadogAPIClient::V2::IncidentServicesApi.new api_client

    incident_service_create_request = DatadogAPIClient::V2::IncidentServiceCreateRequest.new
    incident_service_create_request.data = DatadogAPIClient::V2::IncidentServiceCreateData.new
    incident_service_create_request.data.type = "services"
    incident_service_create_request.data.attributes = DatadogAPIClient::V2::IncidentServiceCreateAttributes.new
    incident_service_create_request.data.attributes.name = unique

    undo_builder = build_undo_for("create_incident_service", api_instance)
    response = api_instance.create_incident_service_with_http_info(incident_service_create_request)
    @undo << undo_builder.call(response[0]) if undo_builder
    response[0]
  end

  def create_team
    configuration.unstable_operations[:create_incident_team] = true
    api_instance = DatadogAPIClient::V2::IncidentTeamsApi.new api_client

    incident_team_create_request = DatadogAPIClient::V2::IncidentTeamCreateRequest.new
    incident_team_create_request.data = DatadogAPIClient::V2::IncidentTeamCreateData.new
    incident_team_create_request.data.type = "teams"
    incident_team_create_request.data.attributes = DatadogAPIClient::V2::IncidentTeamCreateAttributes.new
    incident_team_create_request.data.attributes.name = unique

    undo_builder = build_undo_for("create_incident_team", api_instance)
    response = api_instance.create_incident_team_with_http_info(incident_team_create_request)
    @undo << undo_builder.call(response[0]) if undo_builder
    response[0]
  end

  def create_permission
    api_instance = DatadogAPIClient::V2::RolesApi.new api_client

    response = api_instance.list_permissions
    response.data[0]
  end
end

World(APIWorld)


Given('a valid "apiKeyAuth" key in the system') do
  configuration.api_key['apiKeyAuth'] = ENV["DD_TEST_CLIENT_API_KEY"]
end

Given('a valid "appKeyAuth" key in the system') do
  configuration.api_key['appKeyAuth'] = ENV["DD_TEST_CLIENT_APP_KEY"]
end

Given(/^an instance of "([^"]+)" API$/) do |api_name|
  configuration.debugging = ENV["DEBUG"].present?
  @api_instance = api.const_get("#{api_name}Api").new api_client
end

Given('operation {string} enabled') do |name|
  configuration.unstable_operations[name.snakecase.to_sym] = true
end

Given(/^body (.*)$/) do |body|
  opts[:body] = JSON.parse(body.templated fixtures)
end

Given(/^request contains "([^"]+)" parameter from "([^"]+)"$/) do |parameter_name, fixture_path|
  opts[parameter_name.to_sym] = fixtures.lookup(fixture_path)
end

Given(/^request contains "([^"]+)" parameter with value (.+)$/) do |parameter_name, value|
  opts[parameter_name.snakecase.to_sym] = JSON.parse(value.templated fixtures)
end

Given(/^new "([^"]+)" request$/) do |name|
  @api_method = @api_instance.method("#{name.underscore}_with_http_info".to_sym)
end

When('the request is sent') do
  params = @api_method.parameters.select { |p| p[0] == :req }.map { |p| opts.delete(p[1]) }
  undo_builder = build_undo_for @api_method.name.to_s.chomp('_with_http_info')  # fail early on missing undo method
  @response = @api_method.call(*params, opts)
  @undo << undo_builder.call(@response[0]) if undo_builder
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

Then(/^the response "([^"]+)" has length ([0-9]+)$/) do |response_path, fixture_length|
  expect((@response[0].lookup response_path).length).to eq fixture_length.to_i
end

Given('there is a valid {string} in the system') do |name|
  fixtures[name.to_sym] = self.send("create_#{name}".to_sym)
end

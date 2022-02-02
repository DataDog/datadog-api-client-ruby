require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::UsersAPI.new
user_id = '00000000-0000-0000-0000-000000000000' # String | The ID of the user.

begin
  # Get a user organization
  result = api_instance.list_user_organizations(user_id)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling UsersAPI->list_user_organizations: #{e}"
end

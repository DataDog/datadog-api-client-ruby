require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsersAPI.new
user_id = "00000000-0000-0000-0000-000000000000" # String | The ID of the user.

begin
  # Disable a user
  api_instance.disable_user(user_id)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling UsersAPI->disable_user: #{e}"
end

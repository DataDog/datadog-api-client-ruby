require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::UsersAPI.new
user_handle = TODO # String | The handle of the user.

begin
  # Disable a user
  result = api_instance.disable_user(user_handle)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsersAPI->disable_user: #{e}"
end

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::UsersAPI.new
user_handle = TODO # String | The ID of the user.

begin
  # Get user details
  result = api_instance.get_user(user_handle)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsersAPI->get_user: #{e}"
end

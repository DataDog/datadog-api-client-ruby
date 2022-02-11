require "datadog_api_client"
api_instance = DatadogAPIClient::V1::UsersAPI.new
user_handle = TODO # String | The ID of the user.
body = DatadogAPIClient::V1::User.new # User | Description of the update.

begin
  # Update a user
  result = api_instance.update_user(user_handle, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsersAPI->update_user: #{e}"
end

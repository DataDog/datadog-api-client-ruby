require "datadog_api_client"
api_instance = DatadogAPIClient::V1::UsersAPI.new
body = DatadogAPIClient::V1::User.new # User | User object that needs to be created.

begin
  # Create a user
  result = api_instance.create_user(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsersAPI->create_user: #{e}"
end

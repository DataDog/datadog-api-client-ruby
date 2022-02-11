require "datadog_api_client"
api_instance = DatadogAPIClient::V1::UsersAPI.new

begin
  # List all users
  result = api_instance.list_users
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsersAPI->list_users: #{e}"
end

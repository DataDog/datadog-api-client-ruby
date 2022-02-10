require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsersAPI.new
body = DatadogAPIClient::V2::UserCreateRequest.new({ data: DatadogAPIClient::V2::UserCreateData.new({ attributes: DatadogAPIClient::V2::UserCreateAttributes.new({ email: "jane.doe@example.com" }), type: DatadogAPIClient::V2::UsersType::USERS }) }) # UserCreateRequest |

begin
  # Create a user
  result = api_instance.create_user(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling UsersAPI->create_user: #{e}"
end

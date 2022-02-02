require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsersAPI.new
body = DatadogAPIClient::V2::ServiceAccountCreateRequest.new({ data: DatadogAPIClient::V2::ServiceAccountCreateData.new({ attributes: DatadogAPIClient::V2::ServiceAccountCreateAttributes.new({ email: "jane.doe@example.com", service_account: true }), type: DatadogAPIClient::V2::UsersType::USERS }) }) # ServiceAccountCreateRequest |

begin
  # Create a service account
  result = api_instance.create_service_account(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling UsersAPI->create_service_account: #{e}"
end

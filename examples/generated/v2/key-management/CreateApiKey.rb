require "datadog_api_client"
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new
body = DatadogAPIClient::V2::APIKeyCreateRequest.new({ data: DatadogAPIClient::V2::APIKeyCreateData.new({ attributes: DatadogAPIClient::V2::APIKeyCreateAttributes.new({ name: "API Key for submitting metrics" }), type: DatadogAPIClient::V2::APIKeysType::API_KEYS }) }) # APIKeyCreateRequest |

begin
  # Create an API key
  result = api_instance.create_api_key(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling KeyManagementAPI->create_api_key: #{e}"
end

# Create an API key returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new

body = DatadogAPIClient::V2::APIKeyCreateRequest.new({
  data: DatadogAPIClient::V2::APIKeyCreateData.new({
    type: DatadogAPIClient::V2::APIKeysType::API_KEYS,
    attributes: DatadogAPIClient::V2::APIKeyCreateAttributes.new({
      name: "Example-Key-Management",
    }),
  }),
})
p api_instance.create_api_key(body)

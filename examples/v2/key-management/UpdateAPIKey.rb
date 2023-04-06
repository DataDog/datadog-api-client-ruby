# Edit an API key returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new

# there is a valid "api_key" in the system
API_KEY_DATA_ID = ENV["API_KEY_DATA_ID"]

body = DatadogAPIClient::V2::APIKeyUpdateRequest.new({
  data: DatadogAPIClient::V2::APIKeyUpdateData.new({
    type: DatadogAPIClient::V2::APIKeysType::API_KEYS,
    id: API_KEY_DATA_ID,
    attributes: DatadogAPIClient::V2::APIKeyUpdateAttributes.new({
      name: "Example-Key-Management",
    }),
  }),
})
p api_instance.update_api_key(API_KEY_DATA_ID, body)

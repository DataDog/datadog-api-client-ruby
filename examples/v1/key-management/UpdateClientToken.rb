# Update client token returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v1.update_client_token".to_sym] = true
end
api_instance = DatadogAPIClient::V1::KeyManagementAPI.new

body = DatadogAPIClient::V1::ClientTokenUpdateRequest.new({
  _hash: "1234567890abcdef1234567890abcdef123",
  name: "Updated Client Token Name",
  origin_urls: [
    "https://example.com",
  ],
})
p api_instance.update_client_token(body)

# Create client token returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v1.create_client_token".to_sym] = true
end
api_instance = DatadogAPIClient::V1::KeyManagementAPI.new

body = DatadogAPIClient::V1::ClientTokenCreateRequest.new({
  name: "Example Client Token",
  origin_urls: [
    "https://example.com",
  ],
})
p api_instance.create_client_token(body)

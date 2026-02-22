# Revoke client token returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v1.revoke_client_token".to_sym] = true
end
api_instance = DatadogAPIClient::V1::KeyManagementAPI.new

body = DatadogAPIClient::V1::ClientTokenRevokeRequest.new({
  _hash: "1234567890abcdef1234567890abcdef123",
})
api_instance.revoke_client_token(body)

# Revoke a requested temporary grant returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.public_revoke_requested_temporary_grant".to_sym] = true
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
api_instance.public_revoke_requested_temporary_grant("12345678-1234-1234-1234-123456789012")

# Cancel your temporary grant request returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.public_cancel_temporary_grant_request".to_sym] = true
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
api_instance.public_cancel_temporary_grant_request("12345678-1234-1234-1234-123456789012")

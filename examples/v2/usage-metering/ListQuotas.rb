# List usage quotas returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_quotas".to_sym] = true
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
p api_instance.list_quotas("ai_credits")

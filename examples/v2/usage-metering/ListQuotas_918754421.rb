# List usage quotas returns "OK" response with pagination

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_quotas".to_sym] = true
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
api_instance.list_quotas_with_pagination("ai_credits") { |item| puts item }

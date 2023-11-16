# Get active billing dimensions for cost attribution returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_active_billing_dimensions".to_sym] = true
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
p api_instance.get_active_billing_dimensions()

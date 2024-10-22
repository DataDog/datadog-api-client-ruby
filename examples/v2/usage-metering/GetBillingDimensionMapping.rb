# Get billing dimension mapping for usage endpoints returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_billing_dimension_mapping".to_sym] = true
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
p api_instance.get_billing_dimension_mapping()

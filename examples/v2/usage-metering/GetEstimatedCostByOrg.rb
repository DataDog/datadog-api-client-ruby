# Get estimated cost across your account returns "OK" response

require "datadog_api_client"
DatadogAPIClient::V2.configure do |config|
  config.unstable_operations["v2.get_estimated_cost_by_org".to_sym] = true
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
p api_instance.get_estimated_cost_by_org("view")

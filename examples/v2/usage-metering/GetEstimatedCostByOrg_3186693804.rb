# GetEstimatedCostByOrg with start_month returns "OK" response

require "datadog_api_client"
DatadogAPIClient::V2.configure do |config|
  config.unstable_operations["v2.get_estimated_cost_by_org".to_sym] = true
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
opts = {
  start_month: (Time.now + -5 * 86400),
}
p api_instance.get_estimated_cost_by_org("sub-org", opts)

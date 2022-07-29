# GetEstimatedCostByOrg with start_date returns "OK" response

require "datadog_api_client"
DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:get_estimated_cost_by_org] = true
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
opts = {
  start_date: (Time.now + -5 * 86400),
}
p api_instance.get_estimated_cost_by_org("sub-org", opts)

# GetEstimatedCostByOrg with start_date returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
opts = {
  view: "sub-org",
  start_date: (Time.now + -5 * 86400),
}
p api_instance.get_estimated_cost_by_org(opts)

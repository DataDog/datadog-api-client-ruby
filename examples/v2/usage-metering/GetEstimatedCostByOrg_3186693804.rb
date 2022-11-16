# GetEstimatedCostByOrg with start_month returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
opts = {
  view: "sub-org",
  start_month: Time.now,
}
p api_instance.get_estimated_cost_by_org(opts)

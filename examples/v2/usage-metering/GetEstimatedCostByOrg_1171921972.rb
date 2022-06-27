# Get estimated cost across multi-org account with month returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
opts = {
  start_month: (Time.now + -5 * 86400),
  end_month: (Time.now + -3 * 86400),
}
p api_instance.get_estimated_cost_by_org(opts)

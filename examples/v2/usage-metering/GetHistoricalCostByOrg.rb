# Get historical cost across your account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
opts = {
  view: "sub-org",
}
p api_instance.get_historical_cost_by_org((Time.now + -2 * 86400 * 30), opts)

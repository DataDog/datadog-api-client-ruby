# Get projected cost across your account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
opts = {
  view: "sub-org",
}
p api_instance.get_projected_cost(opts)

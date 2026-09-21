# GetEstimatedCostByOrg with start_month returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
opts = {
  view: "sub-org",
  start_month: Time.now,
}
p api_instance.get_estimated_cost_by_org(opts)

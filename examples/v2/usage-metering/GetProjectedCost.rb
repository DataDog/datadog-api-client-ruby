# Get projected cost across your account returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
opts = {
  view: "sub-org",
}
p api_instance.get_projected_cost(opts)

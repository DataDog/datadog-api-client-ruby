# Save new value for on-demand concurrency cap returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SyntheticsAPI.new

body = DatadogAPIClient::V2::OnDemandConcurrencyCapAttributes.new({
  on_demand_concurrency_cap: 20,
})
p api_instance.set_on_demand_concurrency_cap(body)

# Upload Custom Costs file marked as an AI provider file returns "Accepted" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = [
  DatadogAPIClient::V2::CustomCostsFileLineItem.new({
    provider_name: "my_ai_provider",
    charge_period_start: "2023-05-06",
    charge_period_end: "2023-06-06",
    charge_description: "my_description",
    billed_cost: 250,
    billing_currency: "USD",
  }),
]
opts = {
  ai_provider: true,
}
p api_instance.upload_custom_costs_file(body, opts)

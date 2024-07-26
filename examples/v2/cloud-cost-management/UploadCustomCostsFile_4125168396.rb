# Upload Custom Costs File returns "Accepted" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = [
  DatadogAPIClient::V2::CustomCostsFileLineItem.new({
    provider_name: "my_provider",
    charge_period_start: "2023-05-06",
    charge_period_end: "2023-06-06",
    charge_description: "my_description",
    billed_cost: 250,
    billing_currency: "USD",
    tags: {
      key: "value",
    },
  }),
]
p api_instance.upload_custom_costs_file(body)

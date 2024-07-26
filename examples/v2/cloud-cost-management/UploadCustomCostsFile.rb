# Upload Custom Costs file returns "Accepted" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = [
  DatadogAPIClient::V2::CustomCostsFileLineItem.new({
    billed_cost: 100.5,
    billing_currency: "USD",
    charge_description: "Monthly usage charge for my service",
    charge_period_end: "2023-02-28",
    charge_period_start: "2023-02-01",
  }),
]
p api_instance.upload_custom_costs_file(body)

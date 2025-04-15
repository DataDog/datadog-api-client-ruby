# Update if exists, or create a new budget returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = DatadogAPIClient::V2::BudgetWithEntries.new({
  data: DatadogAPIClient::V2::BudgetWithEntriesData.new({
    id: "1",
  }),
})
p api_instance.upsert_budget(body)

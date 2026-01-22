# Create or update a budget returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = DatadogAPIClient::V2::BudgetWithEntries.new({
  data: DatadogAPIClient::V2::BudgetWithEntriesData.new({
    attributes: DatadogAPIClient::V2::BudgetAttributes.new({
      created_at: 1738258683590,
      created_by: "00000000-0a0a-0a0a-aaa0-00000000000a",
      end_month: 202502,
      entries: [
        DatadogAPIClient::V2::BudgetWithEntriesDataAttributesEntriesItems.new({
          tag_filters: [
            DatadogAPIClient::V2::BudgetWithEntriesDataAttributesEntriesItemsTagFiltersItems.new({}),
          ],
        }),
      ],
      metrics_query: "aws.cost.amortized{service:ec2} by {service}",
      name: "my budget",
      org_id: 123,
      start_month: 202501,
      total_amount: 1000,
      updated_at: 1738258683590,
      updated_by: "00000000-0a0a-0a0a-aaa0-00000000000a",
    }),
    id: "00000000-0a0a-0a0a-aaa0-00000000000a",
    type: "",
  }),
})
p api_instance.upsert_budget(body)

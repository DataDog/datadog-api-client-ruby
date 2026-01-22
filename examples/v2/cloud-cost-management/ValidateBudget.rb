# Validate budget returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = DatadogAPIClient::V2::BudgetValidationRequest.new({
  data: DatadogAPIClient::V2::BudgetValidationRequestData.new({
    attributes: DatadogAPIClient::V2::BudgetWithEntriesDataAttributes.new({
      created_at: 1738258683590,
      created_by: "00000000-0a0a-0a0a-aaa0-00000000000a",
      end_month: 202502,
      entries: [
        DatadogAPIClient::V2::BudgetWithEntriesDataAttributesEntriesItems.new({
          amount: 500,
          month: 202501,
          tag_filters: [
            DatadogAPIClient::V2::BudgetWithEntriesDataAttributesEntriesItemsTagFiltersItems.new({
              tag_key: "service",
              tag_value: "ec2",
            }),
          ],
        }),
        DatadogAPIClient::V2::BudgetWithEntriesDataAttributesEntriesItems.new({
          amount: 500,
          month: 202502,
          tag_filters: [
            DatadogAPIClient::V2::BudgetWithEntriesDataAttributesEntriesItemsTagFiltersItems.new({
              tag_key: "service",
              tag_value: "ec2",
            }),
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
    id: "1",
    type: DatadogAPIClient::V2::BudgetWithEntriesDataType::BUDGET,
  }),
})
p api_instance.validate_budget(body)

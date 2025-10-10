# Update custom allocation rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = DatadogAPIClient::V2::ArbitraryCostUpsertRequest.new({
  data: DatadogAPIClient::V2::ArbitraryCostUpsertRequestData.new({
    attributes: DatadogAPIClient::V2::ArbitraryCostUpsertRequestDataAttributes.new({
      costs_to_allocate: [
        DatadogAPIClient::V2::ArbitraryCostUpsertRequestDataAttributesCostsToAllocateItems.new({
          condition: "is",
          tag: "account_id",
          value: "123456789",
          values: [],
        }),
        DatadogAPIClient::V2::ArbitraryCostUpsertRequestDataAttributesCostsToAllocateItems.new({
          condition: "in",
          tag: "environment",
          value: "",
          values: [
            "production",
            "staging",
          ],
        }),
      ],
      enabled: true,
      order_id: 1,
      provider: [
        "aws",
        "gcp",
      ],
      rule_name: "example-arbitrary-cost-rule",
      strategy: DatadogAPIClient::V2::ArbitraryCostUpsertRequestDataAttributesStrategy.new({
        allocated_by_tag_keys: [
          "team",
          "environment",
        ],
        based_on_costs: [
          DatadogAPIClient::V2::ArbitraryCostUpsertRequestDataAttributesStrategyBasedOnCostsItems.new({
            condition: "is",
            tag: "service",
            value: "web-api",
            values: [],
          }),
          DatadogAPIClient::V2::ArbitraryCostUpsertRequestDataAttributesStrategyBasedOnCostsItems.new({
            condition: "not in",
            tag: "team",
            value: "",
            values: [
              "legacy",
              "deprecated",
            ],
          }),
        ],
        granularity: "daily",
        method: "proportional",
      }),
      type: "shared",
    }),
    type: DatadogAPIClient::V2::ArbitraryCostUpsertRequestDataType::UPSERT_ARBITRARY_RULE,
  }),
})
p api_instance.update_custom_allocation_rule(683, body)

# Update a unit cost returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_unit_cost".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = DatadogAPIClient::V2::UnitCostUpdateRequest.new({
  data: DatadogAPIClient::V2::UnitCostUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::UnitCostRequestAttributes.new({
      denominator_query: DatadogAPIClient::V2::UnitCostQueryDefinition.new({
        formulas: [
          DatadogAPIClient::V2::UnitCostFormula.new({}),
        ],
        queries: [
          DatadogAPIClient::V2::UnitCostQuery.new({}),
        ],
      }),
      description: "Amortized cloud spend divided by the number of active users.",
      name: "Cloud cost per active user",
      numerator_query: DatadogAPIClient::V2::UnitCostQueryDefinition.new({
        formulas: [
          DatadogAPIClient::V2::UnitCostFormula.new({}),
        ],
        queries: [
          DatadogAPIClient::V2::UnitCostQuery.new({}),
        ],
      }),
      unit_label: "user",
    }),
    id: "64aecd58-e355-4f07-9c3a-56ff6bda6cd8",
    type: DatadogAPIClient::V2::UnitCostType::UNIT_COST,
  }),
})
p api_instance.update_unit_cost("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)

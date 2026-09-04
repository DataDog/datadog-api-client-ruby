# Create a unit cost returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_unit_cost".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = DatadogAPIClient::V2::UnitCostCreateRequest.new({
  data: DatadogAPIClient::V2::UnitCostCreateRequestData.new({
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
    type: DatadogAPIClient::V2::UnitCostType::UNIT_COST,
  }),
})
p api_instance.create_unit_cost(body)

# Reorder arbitrary cost rules returns "Successfully reordered rules" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = DatadogAPIClient::V2::ReorderRuleResourceArray.new({
  data: [
    DatadogAPIClient::V2::ReorderRuleResourceData.new({
      id: "456",
      type: DatadogAPIClient::V2::ReorderRuleResourceDataType::ARBITRARY_RULE,
    }),
    DatadogAPIClient::V2::ReorderRuleResourceData.new({
      id: "123",
      type: DatadogAPIClient::V2::ReorderRuleResourceDataType::ARBITRARY_RULE,
    }),
    DatadogAPIClient::V2::ReorderRuleResourceData.new({
      id: "789",
      type: DatadogAPIClient::V2::ReorderRuleResourceDataType::ARBITRARY_RULE,
    }),
  ],
})
api_instance.reorder_arbitrary_cost_rules(body)

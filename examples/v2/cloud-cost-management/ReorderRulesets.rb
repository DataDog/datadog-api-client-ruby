# Reorder rulesets returns "Successfully reordered rulesets" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = DatadogAPIClient::V2::ReorderRulesetResourceArray.new({
  data: [
    DatadogAPIClient::V2::ReorderRulesetResourceData.new({
      type: DatadogAPIClient::V2::ReorderRulesetResourceDataType::RULESET,
    }),
  ],
})
api_instance.reorder_rulesets(body)

# Reorder tag pipeline rulesets returns "Successfully reordered rulesets" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = DatadogAPIClient::V2::ReorderRulesetResourceArray.new({
  data: [
    DatadogAPIClient::V2::ReorderRulesetResourceData.new({
      id: "55ef2385-9ae1-4410-90c4-5ac1b60fec10",
      type: DatadogAPIClient::V2::ReorderRulesetResourceDataType::RULESET,
    }),
    DatadogAPIClient::V2::ReorderRulesetResourceData.new({
      id: "a7b8c9d0-1234-5678-9abc-def012345678",
      type: DatadogAPIClient::V2::ReorderRulesetResourceDataType::RULESET,
    }),
    DatadogAPIClient::V2::ReorderRulesetResourceData.new({
      id: "f1e2d3c4-b5a6-9780-1234-567890abcdef",
      type: DatadogAPIClient::V2::ReorderRulesetResourceDataType::RULESET,
    }),
  ],
})
api_instance.reorder_tag_pipelines_rulesets(body)

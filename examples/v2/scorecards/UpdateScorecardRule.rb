# Update an existing scorecard rule returns "Rule updated successfully" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ScorecardsAPI.new

body = DatadogAPIClient::V2::UpdateRuleRequest.new({
  data: DatadogAPIClient::V2::UpdateRuleRequestData.new({
    attributes: DatadogAPIClient::V2::RuleAttributesRequest.new({
      enabled: true,
      level: 2,
      name: "Team Defined",
      scope_query: "kind:service",
      scorecard_name: "Deployments automated via Deployment Trains",
    }),
    type: DatadogAPIClient::V2::RuleType::RULE,
  }),
})
p api_instance.update_scorecard_rule("rule_id", body)

# Create a new rule returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ScorecardsAPI.new

body = DatadogAPIClient::V2::CreateRuleRequest.new({
  data: DatadogAPIClient::V2::CreateRuleRequestData.new({
    attributes: DatadogAPIClient::V2::RuleAttributesRequest.new({
      enabled: true,
      name: "Example-Scorecard",
      scorecard_name: "Observability Best Practices",
    }),
    type: DatadogAPIClient::V2::RuleType::RULE,
  }),
})
p api_instance.create_scorecard_rule(body)

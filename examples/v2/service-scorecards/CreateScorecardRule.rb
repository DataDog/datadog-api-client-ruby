# Create a new rule returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_scorecard_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ServiceScorecardsAPI.new

body = DatadogAPIClient::V2::CreateRuleRequest.new({
  data: DatadogAPIClient::V2::CreateRuleRequestData.new({
    attributes: DatadogAPIClient::V2::RuleAttributes.new({
      enabled: true,
      name: "Example-Service-Scorecard",
      scorecard_name: "Observability Best Practices",
    }),
    type: DatadogAPIClient::V2::RuleType::RULE,
  }),
})
p api_instance.create_scorecard_rule(body)

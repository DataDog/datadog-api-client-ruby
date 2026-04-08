# Update an existing rule returns "Rule updated successfully" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ScorecardsAPI.new

# there is a valid "create_scorecard_rule" in the system
CREATE_SCORECARD_RULE_DATA_ATTRIBUTES_NAME = ENV["CREATE_SCORECARD_RULE_DATA_ATTRIBUTES_NAME"]
CREATE_SCORECARD_RULE_DATA_ATTRIBUTES_SCORECARD_NAME = ENV["CREATE_SCORECARD_RULE_DATA_ATTRIBUTES_SCORECARD_NAME"]
CREATE_SCORECARD_RULE_DATA_ID = ENV["CREATE_SCORECARD_RULE_DATA_ID"]

body = DatadogAPIClient::V2::UpdateRuleRequest.new({
  data: DatadogAPIClient::V2::UpdateRuleRequestData.new({
    type: DatadogAPIClient::V2::RuleType::RULE,
    attributes: DatadogAPIClient::V2::RuleAttributesRequest.new({
      enabled: true,
      name: CREATE_SCORECARD_RULE_DATA_ATTRIBUTES_NAME,
      scorecard_name: CREATE_SCORECARD_RULE_DATA_ATTRIBUTES_SCORECARD_NAME,
      description: "Updated description via test",
    }),
  }),
})
p api_instance.update_scorecard_rule(CREATE_SCORECARD_RULE_DATA_ID, body)

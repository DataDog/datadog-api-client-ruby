# Delete a rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ScorecardsAPI.new

# there is a valid "create_scorecard_rule" in the system
CREATE_SCORECARD_RULE_DATA_ID = ENV["CREATE_SCORECARD_RULE_DATA_ID"]
api_instance.delete_scorecard_rule(CREATE_SCORECARD_RULE_DATA_ID)

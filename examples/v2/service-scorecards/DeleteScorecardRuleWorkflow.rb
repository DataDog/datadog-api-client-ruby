# Delete rule workflow returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_scorecard_rule_workflow".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ServiceScorecardsAPI.new
api_instance.delete_scorecard_rule_workflow("rule_id")

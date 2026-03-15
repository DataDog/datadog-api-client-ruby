# Associate workflow with rule returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_scorecard_rule_workflow".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ServiceScorecardsAPI.new
api_instance.update_scorecard_rule_workflow("rule_id", "550e8400-e29b-41d4-a716-446655440000")

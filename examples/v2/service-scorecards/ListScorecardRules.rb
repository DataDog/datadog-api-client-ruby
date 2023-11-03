# List all rules returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_scorecard_rules".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ServiceScorecardsAPI.new
p api_instance.list_scorecard_rules()

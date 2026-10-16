# List all rule outcomes returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ScorecardsAPI.new
opts = {
  filter_rule_id: "00000000-0000-0000-0000-000000000000",
}
p api_instance.list_scorecard_outcomes(opts)

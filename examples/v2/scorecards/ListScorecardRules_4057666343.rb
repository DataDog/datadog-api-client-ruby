# List all rules returns "OK" response with pagination

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ScorecardsAPI.new
opts = {
  page_size: 2,
  fields_rule: "name",
  filter_rule_custom: true,
}
api_instance.list_scorecard_rules_with_pagination(opts) { |item| puts item }

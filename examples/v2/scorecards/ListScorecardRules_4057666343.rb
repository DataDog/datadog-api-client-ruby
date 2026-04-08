# List all rules returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ScorecardsAPI.new
opts = {
  page_size: 2,
  fields_rule: "name",
  filter_rule_custom: true,
}
api_instance.list_scorecard_rules_with_pagination(opts) { |item| puts item }

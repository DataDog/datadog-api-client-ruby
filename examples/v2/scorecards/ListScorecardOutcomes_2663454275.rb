# List all rule outcomes returns "OK" response with pagination

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ScorecardsAPI.new
opts = {
  page_size: 2,
  fields_outcome: "state",
  filter_outcome_service_name: "my-service",
}
api_instance.list_scorecard_outcomes_with_pagination(opts) { |item| puts item }

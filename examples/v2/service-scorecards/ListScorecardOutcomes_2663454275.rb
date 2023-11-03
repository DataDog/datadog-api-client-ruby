# List all rule outcomes returns "OK" response with pagination

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_scorecard_outcomes".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ServiceScorecardsAPI.new
opts = {
  page_size: 2,
  fields_outcome: "state",
  filter_outcome_service_name: "my-service",
}
api_instance.list_scorecard_outcomes_with_pagination(opts) { |item| puts item }

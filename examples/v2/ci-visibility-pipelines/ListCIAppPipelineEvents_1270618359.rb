# Get a list of pipelines events returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CIVisibilityPipelinesAPI.new
opts = {
  filter_from: (Time.now + -30),
  filter_to: Time.now,
  page_limit: 2,
}
api_instance.list_ci_app_pipeline_events_with_pagination(opts) { |item| puts item }

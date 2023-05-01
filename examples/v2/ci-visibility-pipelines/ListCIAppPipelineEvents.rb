# Get a list of pipelines events returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CIVisibilityPipelinesAPI.new
opts = {
  filter_query: "@ci.provider.name:circleci",
  filter_from: (Time.now + -30 * 60),
  filter_to: Time.now,
  page_limit: 5,
}
p api_instance.list_ci_app_pipeline_events(opts)

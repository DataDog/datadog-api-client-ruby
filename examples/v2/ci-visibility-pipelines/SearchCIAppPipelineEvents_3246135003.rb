# Search pipelines events returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CIVisibilityPipelinesAPI.new

body = DatadogAPIClient::V2::CIAppPipelineEventsRequest.new({
  filter: DatadogAPIClient::V2::CIAppPipelinesQueryFilter.new({
    from: "now-30s",
    to: "now",
  }),
  options: DatadogAPIClient::V2::CIAppQueryOptions.new({
    timezone: "GMT",
  }),
  page: DatadogAPIClient::V2::CIAppQueryPageOptions.new({
    limit: 2,
  }),
  sort: DatadogAPIClient::V2::CIAppSort::TIMESTAMP_ASCENDING,
})
opts = {
  body: body,
}
api_instance.search_ci_app_pipeline_events_with_pagination(opts) { |item| puts item }

# Search pipelines events returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CIVisibilityPipelinesAPI.new

body = DatadogAPIClient::V2::CIAppPipelineEventsRequest.new({
  filter: DatadogAPIClient::V2::CIAppPipelinesQueryFilter.new({
    from: "now-15m",
    query: "@ci.provider.name:github AND @ci.status:error",
    to: "now",
  }),
  options: DatadogAPIClient::V2::CIAppQueryOptions.new({
    timezone: "GMT",
  }),
  page: DatadogAPIClient::V2::CIAppQueryPageOptions.new({
    limit: 5,
  }),
  sort: DatadogAPIClient::V2::CIAppSort::TIMESTAMP_ASCENDING,
})
opts = {
  body: body,
}
p api_instance.search_ci_app_pipeline_events(opts)

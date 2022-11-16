# Search tests events returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CIVisibilityTestsAPI.new

body = DatadogAPIClient::V2::CIAppTestEventsRequest.new({
  filter: DatadogAPIClient::V2::CIAppTestsQueryFilter.new({
    from: "now-15m",
    query: "@test.status:pass AND -@language:python",
    to: "now",
  }),
  page: DatadogAPIClient::V2::CIAppQueryPageOptions.new({
    limit: 2,
  }),
  sort: DatadogAPIClient::V2::CIAppSort::TIMESTAMP_ASCENDING,
})
opts = {
  body: body,
}
api_instance.search_ci_app_test_events_with_pagination(opts) { |item| puts item }

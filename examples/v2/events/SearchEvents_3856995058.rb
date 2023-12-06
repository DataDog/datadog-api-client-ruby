# Search events returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::EventsAPI.new

body = DatadogAPIClient::V2::EventsListRequest.new({
  filter: DatadogAPIClient::V2::EventsQueryFilter.new({
    from: "now-15m",
    to: "now",
  }),
  options: DatadogAPIClient::V2::EventsQueryOptions.new({
    timezone: "GMT",
  }),
  page: DatadogAPIClient::V2::EventsRequestPage.new({
    limit: 2,
  }),
  sort: DatadogAPIClient::V2::EventsSort::TIMESTAMP_ASCENDING,
})
opts = {
  body: body,
}
api_instance.search_events_with_pagination(opts) { |item| puts item }

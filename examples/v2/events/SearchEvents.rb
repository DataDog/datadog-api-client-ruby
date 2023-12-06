# Search events returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::EventsAPI.new

body = DatadogAPIClient::V2::EventsListRequest.new({
  filter: DatadogAPIClient::V2::EventsQueryFilter.new({
    query: "datadog-agent",
    from: "2020-09-17T11:48:36+01:00",
    to: "2020-09-17T12:48:36+01:00",
  }),
  sort: DatadogAPIClient::V2::EventsSort::TIMESTAMP_ASCENDING,
  page: DatadogAPIClient::V2::EventsRequestPage.new({
    limit: 5,
  }),
})
opts = {
  body: body,
}
p api_instance.search_events(opts)

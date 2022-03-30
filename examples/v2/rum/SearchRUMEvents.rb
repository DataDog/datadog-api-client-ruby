# Search RUM events returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMAPI.new

body = DatadogAPIClient::V2::RUMSearchEventsRequest.new({
  filter: DatadogAPIClient::V2::RUMQueryFilter.new({
    from: "now-15m",
    query: "@type:session AND @session.type:user",
    to: "now",
  }),
  options: DatadogAPIClient::V2::RUMQueryOptions.new({
    time_offset: 0,
    timezone: "GMT",
  }),
  page: DatadogAPIClient::V2::RUMQueryPageOptions.new({
    limit: 25,
  }),
  sort: DatadogAPIClient::V2::RUMSort::TIMESTAMP_ASCENDING,
})
p api_instance.search_rum_events(body)

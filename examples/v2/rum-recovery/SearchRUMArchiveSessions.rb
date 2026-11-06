# Search archived sessions returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMRecoveryAPI.new

body = DatadogAPIClient::V2::RumArchiveSessionsSearchRequest.new({
  data: DatadogAPIClient::V2::RumArchiveSessionsSearchData.new({
    attributes: DatadogAPIClient::V2::RumArchiveSessionsSearchAttributes.new({
      cursor: "example",
      from: 1789905600000,
      hide_retained: false,
      limit: 0,
      query: "service:web",
      to: 1789992000000,
    }),
    id: "11111111-1111-4111-8111-111111111111",
    type: "rum_archive_sessions_request",
  }),
})
p api_instance.search_rum_archive_sessions(body)

# Search archived sessions returns canonical data and first-page metadata

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMRecoveryAPI.new

body = DatadogAPIClient::V2::RumArchiveSessionsSearchRequest.new({
  data: DatadogAPIClient::V2::RumArchiveSessionsSearchData.new({
    type: "rum_archive_sessions_request",
    attributes: DatadogAPIClient::V2::RumArchiveSessionsSearchAttributes.new({
      query: "service:rum18600-fixture",
      from: 1636024271000,
      to: 1636629071000,
      limit: 1,
    }),
  }),
})
p api_instance.search_rum_archive_sessions(body)

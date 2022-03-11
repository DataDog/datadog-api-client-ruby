# Search logs returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsAPI.new

body = DatadogAPIClient::V2::LogsListRequest.new({
  filter: DatadogAPIClient::V2::LogsQueryFilter.new({
    query: "datadog-agent",
    indexes: [
      "main",
    ],
    from: "2020-09-17T11:48:36+01:00",
    to: "2020-09-17T12:48:36+01:00",
  }),
  sort: DatadogAPIClient::V2::LogsSort::TIMESTAMP_ASCENDING,
  page: DatadogAPIClient::V2::LogsListRequestPage.new({
    limit: 5,
  }),
})
opts = {
  body: body,
}
p api_instance.list_logs(opts)

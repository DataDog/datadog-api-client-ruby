# Search logs returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsAPI.new

body = DatadogAPIClient::V1::LogsListRequest.new({
  index: "retention-3,retention-15",
  query: "service:web* AND @http.status_code:[200 TO 299]",
  sort: DatadogAPIClient::V1::LogsSort::TIME_ASCENDING,
  time: DatadogAPIClient::V1::LogsListRequestTime.new({
    from: "2020-02-02T02:02:02.202Z",
    to: "2020-02-20T02:02:02.202Z",
  }),
})
p api_instance.list_logs(body)

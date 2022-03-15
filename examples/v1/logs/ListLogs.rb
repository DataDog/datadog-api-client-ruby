# Search logs returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsAPI.new

body = DatadogAPIClient::V1::LogsListRequest.new({
  index: "main",
  limit: 5,
  query: "service:web* AND @http.status_code:[200 TO 299]",
  sort: DatadogAPIClient::V1::LogsSort::TIME_ASCENDING,
  time: DatadogAPIClient::V1::LogsListRequestTime.new({
    from: (Time.now + -1 * 86400),
    timezone: "Europe/Paris",
    to: Time.now,
  }),
})
p api_instance.list_logs(body)

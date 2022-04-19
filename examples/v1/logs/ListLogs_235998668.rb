# Search test logs returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsAPI.new

body = DatadogAPIClient::V1::LogsListRequest.new({
  index: "main",
  query: "host:Test*",
  sort: DatadogAPIClient::V1::LogsSort::TIME_ASCENDING,
  time: DatadogAPIClient::V1::LogsListRequestTime.new({
    from: (Time.now + -1 * 3600),
    timezone: "Europe/Paris",
    to: Time.now,
  }),
})
p api_instance.list_logs(body)

# Search logs (POST) returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsAPI.new

body = DatadogAPIClient::V2::LogsListRequest.new({
  filter: DatadogAPIClient::V2::LogsQueryFilter.new({
    from: "now-15m",
    indexes: [
      "main",
      "web",
    ],
    query: "service:web* AND @http.status_code:[200 TO 299]",
    storage_tier: DatadogAPIClient::V2::LogsStorageTier::INDEXES,
    to: "now",
  }),
  options: DatadogAPIClient::V2::LogsQueryOptions.new({
    timezone: "GMT",
  }),
  page: DatadogAPIClient::V2::LogsListRequestPage.new({
    cursor: "eyJzdGFydEF0IjoiQVFBQUFYS2tMS3pPbm40NGV3QUFBQUJCV0V0clRFdDZVbG8zY3pCRmNsbHJiVmxDWlEifQ==",
    limit: 25,
  }),
  sort: DatadogAPIClient::V2::LogsSort::TIMESTAMP_ASCENDING,
})
opts = {
  body: body,
}
api_instance.list_logs_with_pagination(opts) { |item| puts item }

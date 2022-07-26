# Search logs returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsAPI.new

body = DatadogAPIClient::V2::LogsListRequest.new({
  filter: DatadogAPIClient::V2::LogsQueryFilter.new({
    from: "now-15m",
    indexes: [
      "main",
    ],
    to: "now",
  }),
  options: DatadogAPIClient::V2::LogsQueryOptions.new({
    timezone: "GMT",
  }),
  page: DatadogAPIClient::V2::LogsListRequestPage.new({
    limit: 2,
  }),
  sort: DatadogAPIClient::V2::LogsSort::TIMESTAMP_ASCENDING,
})
opts = {
  body: body,
}
api_instance.list_logs_with_pagination(opts) { |item| puts item }

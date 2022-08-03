# Search Audit Logs events returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AuditAPI.new

body = DatadogAPIClient::V2::AuditLogsSearchEventsRequest.new({
  filter: DatadogAPIClient::V2::AuditLogsQueryFilter.new({
    from: "now-15m",
    to: "now",
  }),
  options: DatadogAPIClient::V2::AuditLogsQueryOptions.new({
    timezone: "GMT",
  }),
  page: DatadogAPIClient::V2::AuditLogsQueryPageOptions.new({
    limit: 2,
  }),
  sort: DatadogAPIClient::V2::AuditLogsSort::TIMESTAMP_ASCENDING,
})
opts = {
  body: body,
}
api_instance.search_audit_logs_with_pagination(opts) { |item| puts item }

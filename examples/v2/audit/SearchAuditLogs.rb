# Search Audit Logs events returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::AuditAPI.new

body = DatadogAPIClient::V2::AuditLogsSearchEventsRequest.new({
  filter: DatadogAPIClient::V2::AuditLogsQueryFilter.new({
    from: "now-15m",
    query: "@type:session AND @session.type:user",
    to: "now",
  }),
  options: DatadogAPIClient::V2::AuditLogsQueryOptions.new({
    time_offset: 0,
    timezone: "GMT",
  }),
  page: DatadogAPIClient::V2::AuditLogsQueryPageOptions.new({
    limit: 25,
  }),
  sort: DatadogAPIClient::V2::AuditLogsSort::TIMESTAMP_ASCENDING,
})
opts = {
  body: body,
}
p api_instance.search_audit_logs(opts)

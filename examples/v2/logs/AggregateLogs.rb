# Aggregate events returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsAPI.new

body = DatadogAPIClient::V2::LogsAggregateRequest.new({
  filter: DatadogAPIClient::V2::LogsQueryFilter.new({
    from: "now-15m",
    indexes: [
      "main",
    ],
    query: "*",
    to: "now",
  }),
})
p api_instance.aggregate_logs(body)

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsMetricsAPI.new
body = DatadogAPIClient::V2::LogsMetricCreateRequest.new({ data: DatadogAPIClient::V2::LogsMetricCreateData.new({ attributes: DatadogAPIClient::V2::LogsMetricCreateAttributes.new({ compute: DatadogAPIClient::V2::LogsMetricCompute.new({ aggregation_type: DatadogAPIClient::V2::LogsMetricComputeAggregationType::COUNT }) }), id: "logs.page.load.count", type: DatadogAPIClient::V2::LogsMetricType::LOGS_METRICS }) }) # LogsMetricCreateRequest | The definition of the new log-based metric.

begin
  # Create a log-based metric
  result = api_instance.create_logs_metric(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsMetricsAPI->create_logs_metric: #{e}"
end

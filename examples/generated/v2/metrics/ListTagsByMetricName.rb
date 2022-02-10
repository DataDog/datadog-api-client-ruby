require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::MetricsAPI.new
metric_name = 'dist.http.endpoint.request' # String | The name of the metric.

begin
  # List tags by metric name
  result = api_instance.list_tags_by_metric_name(metric_name)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling MetricsAPI->list_tags_by_metric_name: #{e}"
end

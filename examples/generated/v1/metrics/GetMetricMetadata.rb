require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MetricsAPI.new
metric_name = "metric_name_example" # String | Name of the metric for which to get metadata.

begin
  # Get metric metadata
  result = api_instance.get_metric_metadata(metric_name)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MetricsAPI->get_metric_metadata: #{e}"
end

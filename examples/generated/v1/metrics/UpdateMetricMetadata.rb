require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MetricsAPI.new
metric_name = "metric_name_example" # String | Name of the metric for which to edit metadata.
body = DatadogAPIClient::V1::MetricMetadata.new # MetricMetadata | New metadata.

begin
  # Edit metric metadata
  result = api_instance.update_metric_metadata(metric_name, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MetricsAPI->update_metric_metadata: #{e}"
end

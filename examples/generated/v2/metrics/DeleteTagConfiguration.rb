require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:delete_tag_configuration] = true
end

api_instance = DatadogAPIClient::V2::MetricsAPI.new
metric_name = 'dist.http.endpoint.request' # String | The name of the metric.

begin
  # Delete a tag configuration
  api_instance.delete_tag_configuration(metric_name)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling MetricsAPI->delete_tag_configuration: #{e}"
end

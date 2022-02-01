require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:list_tag_configuration_by_name] = true
end

api_instance = DatadogAPIClient::V2::MetricsAPI.new
metric_name = 'dist.http.endpoint.request' # String | The name of the metric.

begin
  # List tag configuration by name
  result = api_instance.list_tag_configuration_by_name(metric_name)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling MetricsAPI->list_tag_configuration_by_name: #{e}"
end

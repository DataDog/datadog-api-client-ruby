require "datadog_api_client"

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:update_tag_configuration] = true
end

api_instance = DatadogAPIClient::V2::MetricsAPI.new
metric_name = "dist.http.endpoint.request" # String | The name of the metric.
body = DatadogAPIClient::V2::MetricTagConfigurationUpdateRequest.new({ data: DatadogAPIClient::V2::MetricTagConfigurationUpdateData.new({ id: "test.metric.latency", type: DatadogAPIClient::V2::MetricTagConfigurationType::MANAGE_TAGS }) }) # MetricTagConfigurationUpdateRequest |

begin
  # Update a tag configuration
  result = api_instance.update_tag_configuration(metric_name, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling MetricsAPI->update_tag_configuration: #{e}"
end

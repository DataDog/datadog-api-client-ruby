require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MetricsAPI.new
body = DatadogAPIClient::V2::MetricBulkTagConfigCreateRequest.new({ data: DatadogAPIClient::V2::MetricBulkTagConfigCreate.new({ id: "kafka.lag", type: DatadogAPIClient::V2::MetricBulkConfigureTagsType::BULK_MANAGE_TAGS }) }) # MetricBulkTagConfigCreateRequest |

begin
  # Configure tags for multiple metrics
  result = api_instance.create_bulk_tags_metrics_configuration(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling MetricsAPI->create_bulk_tags_metrics_configuration: #{e}"
end

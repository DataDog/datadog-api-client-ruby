require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MetricsAPI.new
body = DatadogAPIClient::V2::MetricBulkTagConfigDeleteRequest.new({ data: DatadogAPIClient::V2::MetricBulkTagConfigDelete.new({ id: "kafka.lag", type: DatadogAPIClient::V2::MetricBulkConfigureTagsType::BULK_MANAGE_TAGS }) }) # MetricBulkTagConfigDeleteRequest |

begin
  # Configure tags for multiple metrics
  result = api_instance.delete_bulk_tags_metrics_configuration(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling MetricsAPI->delete_bulk_tags_metrics_configuration: #{e}"
end

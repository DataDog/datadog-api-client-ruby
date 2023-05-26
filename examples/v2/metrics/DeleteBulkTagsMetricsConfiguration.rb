# Delete tags for multiple metrics returns "Accepted" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MetricsAPI.new

body = DatadogAPIClient::V2::MetricBulkTagConfigDeleteRequest.new({
  data: DatadogAPIClient::V2::MetricBulkTagConfigDelete.new({
    attributes: DatadogAPIClient::V2::MetricBulkTagConfigDeleteAttributes.new({
      emails: [
        "sue@example.com",
        "bob@example.com",
      ],
    }),
    id: "kafka.lag",
    type: DatadogAPIClient::V2::MetricBulkConfigureTagsType::BULK_MANAGE_TAGS,
  }),
})
p api_instance.delete_bulk_tags_metrics_configuration(body)

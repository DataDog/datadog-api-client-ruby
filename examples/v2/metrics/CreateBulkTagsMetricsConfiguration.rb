# Configure tags for multiple metrics returns "Accepted" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MetricsAPI.new

# there is a valid "user" in the system
USER_DATA_ATTRIBUTES_EMAIL = ENV["USER_DATA_ATTRIBUTES_EMAIL"]

body = DatadogAPIClient::V2::MetricBulkTagConfigCreateRequest.new({
  data: DatadogAPIClient::V2::MetricBulkTagConfigCreate.new({
    attributes: DatadogAPIClient::V2::MetricBulkTagConfigCreateAttributes.new({
      emails: [
        USER_DATA_ATTRIBUTES_EMAIL,
      ],
      tags: [
        "test",
        "examplemetric",
      ],
    }),
    id: "system.load.1",
    type: DatadogAPIClient::V2::MetricBulkConfigureTagsType::BULK_MANAGE_TAGS,
  }),
})
p api_instance.create_bulk_tags_metrics_configuration(body)

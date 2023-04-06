# Create a tag configuration returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MetricsAPI.new

body = DatadogAPIClient::V2::MetricTagConfigurationCreateRequest.new({
  data: DatadogAPIClient::V2::MetricTagConfigurationCreateData.new({
    type: DatadogAPIClient::V2::MetricTagConfigurationType::MANAGE_TAGS,
    id: "ExampleMetric",
    attributes: DatadogAPIClient::V2::MetricTagConfigurationCreateAttributes.new({
      tags: [
        "app",
        "datacenter",
      ],
      metric_type: DatadogAPIClient::V2::MetricTagConfigurationMetricTypes::GAUGE,
    }),
  }),
})
p api_instance.create_tag_configuration("ExampleMetric", body)

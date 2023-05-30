# Get a monitor configuration policy returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MetricsAPI.new

body = DatadogAPIClient::V2::MetricTagConfigurationCreateRequest.new({
  data: DatadogAPIClient::V2::MetricTagConfigurationCreateData.new({
    attributes: DatadogAPIClient::V2::MetricTagConfigurationCreateAttributes.new({
      include_percentiles: false,
      metric_type: DatadogAPIClient::V2::MetricTagConfigurationMetricTypes::DISTRIBUTION,
      tags: [
        "app",
        "datacenter",
      ],
    }),
    id: "http.endpoint.request",
    type: DatadogAPIClient::V2::MetricTagConfigurationType::MANAGE_TAGS,
  }),
})
p api_instance.create_tag_configuration("metric_name", body)

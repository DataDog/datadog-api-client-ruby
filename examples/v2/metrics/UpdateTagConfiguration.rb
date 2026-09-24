# Update a tag configuration returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new

# there is a valid "metric_tag_configuration" in the system
METRIC_TAG_CONFIGURATION_DATA_ID = ENV["METRIC_TAG_CONFIGURATION_DATA_ID"]

body = DatadogAPIClient::V2::MetricTagConfigurationUpdateRequest.new({
  data: DatadogAPIClient::V2::MetricTagConfigurationUpdateData.new({
    type: DatadogAPIClient::V2::MetricTagConfigurationType::MANAGE_TAGS,
    id: METRIC_TAG_CONFIGURATION_DATA_ID,
    attributes: DatadogAPIClient::V2::MetricTagConfigurationUpdateAttributes.new({
      tags: [
        "app",
      ],
    }),
  }),
})
p api_instance.update_tag_configuration(METRIC_TAG_CONFIGURATION_DATA_ID, body)

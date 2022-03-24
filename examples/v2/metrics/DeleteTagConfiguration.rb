# Delete a tag configuration returns "No Content" response

require "datadog_api_client"
DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:delete_tag_configuration] = true
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new

# there is a valid "metric_tag_configuration" in the system
METRIC_TAG_CONFIGURATION_DATA_ID = ENV["METRIC_TAG_CONFIGURATION_DATA_ID"]
api_instance.delete_tag_configuration(METRIC_TAG_CONFIGURATION_DATA_ID)

# List tag configuration by name returns "Success" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MetricsAPI.new

# there is a valid "metric_tag_configuration" in the system
METRIC_TAG_CONFIGURATION_DATA_ID = ENV["METRIC_TAG_CONFIGURATION_DATA_ID"]
p api_instance.list_tag_configuration_by_name(METRIC_TAG_CONFIGURATION_DATA_ID)

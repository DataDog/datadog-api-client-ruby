# Get a derived metric returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new

# there is a valid "derived_metric" in the system
DERIVED_METRIC_DATA_ID = ENV["DERIVED_METRIC_DATA_ID"]
p api_instance.get_derived_metric(DERIVED_METRIC_DATA_ID)

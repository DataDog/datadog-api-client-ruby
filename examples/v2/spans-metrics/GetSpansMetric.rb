# Get a span-based metric returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::SpansMetricsAPI.new

# there is a valid "spans_metric" in the system
SPANS_METRIC_DATA_ID = ENV["SPANS_METRIC_DATA_ID"]
p api_instance.get_spans_metric(SPANS_METRIC_DATA_ID)

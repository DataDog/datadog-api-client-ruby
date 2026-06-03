# Get a rum-based metric returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumMetricsAPI.new

# there is a valid "rum_metric" in the system
RUM_METRIC_DATA_ID = ENV["RUM_METRIC_DATA_ID"]
p api_instance.get_rum_metric(RUM_METRIC_DATA_ID)

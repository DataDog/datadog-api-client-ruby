# Delete a rum-based metric returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumMetricsAPI.new

# there is a valid "rum_metric" in the system
RUM_METRIC_DATA_ID = ENV["RUM_METRIC_DATA_ID"]
api_instance.delete_rum_metric(RUM_METRIC_DATA_ID)

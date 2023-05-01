# Delete a span-based metric returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SpansMetricsAPI.new

# there is a valid "spans_metric" in the system
SPANS_METRIC_DATA_ID = ENV["SPANS_METRIC_DATA_ID"]
api_instance.delete_spans_metric(SPANS_METRIC_DATA_ID)

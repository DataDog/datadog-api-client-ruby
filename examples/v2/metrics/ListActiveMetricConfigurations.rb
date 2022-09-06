# List active tags and aggregations returns "Success" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MetricsAPI.new
p api_instance.list_active_metric_configurations("ExampleListactivetagsandaggregationsreturnsSuccessresponse")

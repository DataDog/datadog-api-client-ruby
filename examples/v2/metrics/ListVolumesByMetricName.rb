# List distinct metric volumes by metric name returns "Success" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MetricsAPI.new
p api_instance.list_volumes_by_metric_name("static_test_metric_donotdelete")

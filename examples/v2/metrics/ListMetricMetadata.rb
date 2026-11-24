# List metadata for multiple metrics returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.list_metric_metadata".to_sym] = true
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new
p api_instance.list_metric_metadata("static_test_metric_donotdelete,static_test_metric_donotdelete,not.a.real.metric.examplemetric")

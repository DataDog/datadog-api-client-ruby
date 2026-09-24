# List distinct metric volumes by metric name returns "Success" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new
p api_instance.list_volumes_by_metric_name("static_test_metric_donotdelete")

# Get tag key cardinality details returns "Success" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new
p api_instance.get_metric_tag_cardinality_details("metric_name")

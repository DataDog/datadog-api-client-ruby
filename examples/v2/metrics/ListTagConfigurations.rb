# List all metrics with volumes and query activity returns "Success" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new
opts = {
  page_size: 100,
}
p api_instance.list_tag_configurations(opts)

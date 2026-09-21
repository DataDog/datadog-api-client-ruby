# Get a list of metrics with configured filter returns "Success" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new
opts = {
  filter_configured: true,
}
p api_instance.list_tag_configurations(opts)

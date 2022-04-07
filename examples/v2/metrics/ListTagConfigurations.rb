# List tag configurations returns "Success" response

require "datadog_api_client"
DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:list_tag_configurations] = true
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new
opts = {
  filter_tags_configured: "ExampleListtagconfigurationsreturnsSuccessresponse",
}
p api_instance.list_tag_configurations(opts)

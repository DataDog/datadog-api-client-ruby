# List tag configurations with a tag filter returns "Success" response

require "datadog_api_client"
DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:list_tag_configurations] = true
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new
opts = {
  filter_tags: "ExampleListtagconfigurationswithatagfilterreturnsSuccessresponse",
}
p api_instance.list_tag_configurations(opts)

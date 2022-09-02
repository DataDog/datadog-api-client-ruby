# Get a list of metrics with a tag filter returns "Success" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MetricsAPI.new
opts = {
  filter_tags: "ExampleGetalistofmetricswithatagfilterreturnsSuccessresponse",
}
p api_instance.list_tag_configurations(opts)

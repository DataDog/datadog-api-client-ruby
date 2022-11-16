# Get a list of metrics with configured filter returns "Success" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MetricsAPI.new
opts = {
  filter_configured: true,
}
p api_instance.list_tag_configurations(opts)

# List all metrics with volumes and query activity for top metrics by indexed volume returns "Success" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new
opts = {
  include: "metric_volumes",
  sort: "-metric_volumes.indexed_volume",
  page_size: 20,
}
p api_instance.list_tag_configurations(opts)

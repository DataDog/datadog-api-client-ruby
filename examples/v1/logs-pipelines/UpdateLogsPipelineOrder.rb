# Update pipeline order returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new

body = DatadogAPIClient::V1::LogsPipelinesOrder.new({
  pipeline_ids: [
    "tags",
    "org_ids",
    "products",
  ],
})
p api_instance.update_logs_pipeline_order(body)

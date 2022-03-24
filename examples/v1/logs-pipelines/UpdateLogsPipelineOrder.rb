# Update pipeline order returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new

body = DatadogAPIClient::V1::LogsPipelinesOrder.new({
  pipeline_ids: [
    "tags",
    "org_ids",
    "products",
  ],
})
p api_instance.update_logs_pipeline_order(body)

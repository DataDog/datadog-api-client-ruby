# Update indexes order returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsIndexesAPI.new

body = DatadogAPIClient::V1::LogsIndexesOrder.new({
  index_names: [
    "main",
    "payments",
    "web",
  ],
})
p api_instance.update_logs_index_order(body)

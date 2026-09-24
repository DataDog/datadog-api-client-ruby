# Update indexes order returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::LogsIndexesAPI.new

body = DatadogAPIClient::V1::LogsIndexesOrder.new({
  index_names: [
    "main",
    "payments",
    "web",
  ],
})
p api_instance.update_logs_index_order(body)

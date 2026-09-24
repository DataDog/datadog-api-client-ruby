# Delete a pipeline returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new
p api_instance.delete_logs_pipeline("pipeline_id")

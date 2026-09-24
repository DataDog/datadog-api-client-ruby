# Get all Amazon EventBridge sources returns "Amazon EventBridge sources list." response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::AWSIntegrationAPI.new
p api_instance.list_aws_event_bridge_sources()

# Create an Amazon EventBridge source returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::AWSIntegrationAPI.new

body = DatadogAPIClient::V1::AWSEventBridgeCreateRequest.new({
  account_id: "123456789012",
  create_event_bus: true,
  event_generator_name: "app-alerts",
  region: "us-east-1",
})
p api_instance.create_aws_event_bridge_source(body)

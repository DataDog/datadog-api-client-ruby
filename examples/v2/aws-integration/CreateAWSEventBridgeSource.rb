# Create an Amazon EventBridge source returns "Amazon EventBridge source created." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AWSIntegrationAPI.new

body = DatadogAPIClient::V2::AWSEventBridgeCreateRequest.new({
  data: DatadogAPIClient::V2::AWSEventBridgeCreateRequestData.new({
    attributes: DatadogAPIClient::V2::AWSEventBridgeCreateRequestAttributes.new({
      account_id: "123456789012",
      create_event_bus: true,
      event_generator_name: "app-alerts",
      region: "us-east-1",
    }),
    type: DatadogAPIClient::V2::AWSEventBridgeType::EVENT_BRIDGE,
  }),
})
p api_instance.create_aws_event_bridge_source(body)

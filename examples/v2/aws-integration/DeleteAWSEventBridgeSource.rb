# Delete an Amazon EventBridge source returns "Amazon EventBridge source deleted." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AWSIntegrationAPI.new

body = DatadogAPIClient::V2::AWSEventBridgeDeleteRequest.new({
  data: DatadogAPIClient::V2::AWSEventBridgeDeleteRequestData.new({
    attributes: DatadogAPIClient::V2::AWSEventBridgeDeleteRequestAttributes.new({
      account_id: "123456789012",
      event_generator_name: "app-alerts-zyxw3210",
      region: "us-east-1",
    }),
    type: DatadogAPIClient::V2::AWSEventBridgeType::EVENT_BRIDGE,
  }),
})
p api_instance.delete_aws_event_bridge_source(body)

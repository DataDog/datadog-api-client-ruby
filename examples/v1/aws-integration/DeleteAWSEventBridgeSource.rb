# Delete an Amazon EventBridge source returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::AWSIntegrationAPI.new

body = DatadogAPIClient::V1::AWSEventBridgeDeleteRequest.new({
  account_id: "123456789012",
  event_generator_name: "app-alerts-zyxw3210",
  region: "us-east-1",
})
p api_instance.delete_aws_event_bridge_source(body)

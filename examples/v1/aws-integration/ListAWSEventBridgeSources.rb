# Get all Amazon EventBridge sources returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::AWSIntegrationAPI.new
p api_instance.list_aws_event_bridge_sources()

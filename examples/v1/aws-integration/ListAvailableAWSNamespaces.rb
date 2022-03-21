# List namespace rules returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::AWSIntegrationAPI.new
p api_instance.list_available_aws_namespaces()

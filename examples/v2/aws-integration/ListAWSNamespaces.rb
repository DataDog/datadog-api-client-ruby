# List available namespaces returns "AWS Namespaces List object" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AWSIntegrationAPI.new
p api_instance.list_aws_namespaces()

# Get list of AWS log ready services returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::AWSLogsIntegrationAPI.new
p api_instance.list_aws_logs_services()

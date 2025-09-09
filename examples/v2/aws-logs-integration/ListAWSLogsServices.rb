# Get list of AWS log ready services returns "AWS Logs Services List object" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AWSLogsIntegrationAPI.new
p api_instance.list_aws_logs_services()

# Get list of AWS log ready services returns "AWS Logs Services List object" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::AWSLogsIntegrationAPI.new
p api_instance.list_aws_logs_services()

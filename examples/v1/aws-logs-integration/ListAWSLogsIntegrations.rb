# List all AWS Logs integrations returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::AWSLogsIntegrationAPI.new
p api_instance.list_aws_logs_integrations()

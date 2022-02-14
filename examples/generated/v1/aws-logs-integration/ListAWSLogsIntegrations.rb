require "datadog_api_client"
api_instance = DatadogAPIClient::V1::AWSLogsIntegrationAPI.new

begin
  # List all AWS Logs integrations
  result = api_instance.list_aws_logs_integrations
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSLogsIntegrationAPI->list_aws_logs_integrations: #{e}"
end

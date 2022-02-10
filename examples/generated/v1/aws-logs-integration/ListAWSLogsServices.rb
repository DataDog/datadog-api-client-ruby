require "datadog_api_client"
api_instance = DatadogAPIClient::V1::AWSLogsIntegrationAPI.new

begin
  # Get list of AWS log ready services
  result = api_instance.list_aws_logs_services
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSLogsIntegrationAPI->list_aws_logs_services: #{e}"
end

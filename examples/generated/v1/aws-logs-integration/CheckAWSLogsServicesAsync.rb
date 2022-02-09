require "datadog_api_client"
api_instance = DatadogAPIClient::V1::AWSLogsIntegrationAPI.new
body = DatadogAPIClient::V1::AWSLogsServicesRequest.new({ account_id: "1234567", services: ["services_example"] }) # AWSLogsServicesRequest | Check AWS Logs Async Services request body.

begin
  # Check permissions for log services
  result = api_instance.check_aws_logs_services_async(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSLogsIntegrationAPI->check_aws_logs_services_async: #{e}"
end

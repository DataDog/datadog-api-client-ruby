require "datadog_api_client"
api_instance = DatadogAPIClient::V1::AWSLogsIntegrationAPI.new
body = DatadogAPIClient::V1::AWSLogsServicesRequest.new({ account_id: "1234567", services: ["services_example"] }) # AWSLogsServicesRequest | Enable AWS Log Services request body.

begin
  # Enable an AWS Logs integration
  result = api_instance.enable_aws_log_services(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSLogsIntegrationAPI->enable_aws_log_services: #{e}"
end

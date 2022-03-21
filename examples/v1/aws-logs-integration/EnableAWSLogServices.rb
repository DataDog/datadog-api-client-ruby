# Enable an AWS Logs integration returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::AWSLogsIntegrationAPI.new

body = DatadogAPIClient::V1::AWSLogsServicesRequest.new({
  account_id: "1234567",
  services: [
    "s3",
    "elb",
    "elbv2",
    "cloudfront",
    "redshift",
    "lambda",
  ],
})
p api_instance.enable_aws_log_services(body)

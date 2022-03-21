# Check permissions for log services returns "OK" response

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
p api_instance.check_aws_logs_services_async(body)

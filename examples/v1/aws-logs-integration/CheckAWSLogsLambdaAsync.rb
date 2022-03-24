# Check that an AWS Lambda Function exists returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::AWSLogsIntegrationAPI.new

body = DatadogAPIClient::V1::AWSAccountAndLambdaRequest.new({
  account_id: "1234567",
  lambda_arn: "arn:aws:lambda:us-east-1:1234567:function:LogsCollectionAPITest",
})
p api_instance.check_aws_logs_lambda_async(body)

require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::AWSLogsIntegrationAPI.new
body = DatadogAPIClient::V1::AWSAccountAndLambdaRequest.new({account_id: '1234567', lambda_arn: 'arn:aws:lambda:us-east-1:1234567:function:LogsCollectionAPITest'}) # AWSAccountAndLambdaRequest | Check AWS Log Lambda Async request body.

begin
  # Check that an AWS Lambda Function exists
  result = api_instance.check_aws_logs_lambda_async(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSLogsIntegrationAPI->check_aws_logs_lambda_async: #{e}"
end

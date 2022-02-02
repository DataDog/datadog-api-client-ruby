require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::AWSLogsIntegrationAPI.new
body = DatadogAPIClient::V1::AWSAccountAndLambdaRequest.new({account_id: '1234567', lambda_arn: 'arn:aws:lambda:us-east-1:1234567:function:LogsCollectionAPITest'}) # AWSAccountAndLambdaRequest | Delete AWS Lambda ARN request body.

begin
  # Delete an AWS Logs integration
  result = api_instance.delete_aws_lambda_arn(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSLogsIntegrationAPI->delete_aws_lambda_arn: #{e}"
end

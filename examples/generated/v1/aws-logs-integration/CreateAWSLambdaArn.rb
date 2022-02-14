require "datadog_api_client"
api_instance = DatadogAPIClient::V1::AWSLogsIntegrationAPI.new
body = DatadogAPIClient::V1::AWSAccountAndLambdaRequest.new({ account_id: "1234567", lambda_arn: "arn:aws:lambda:us-east-1:1234567:function:LogsCollectionAPITest" }) # AWSAccountAndLambdaRequest | AWS Log Lambda Async request body.

begin
  # Add AWS Log Lambda ARN
  result = api_instance.create_aws_lambda_arn(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSLogsIntegrationAPI->create_aws_lambda_arn: #{e}"
end

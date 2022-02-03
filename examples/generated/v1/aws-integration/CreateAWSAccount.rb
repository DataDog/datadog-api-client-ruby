require "datadog_api_client"
api_instance = DatadogAPIClient::V1::AWSIntegrationAPI.new
body = DatadogAPIClient::V1::AWSAccount.new # AWSAccount | AWS Request Object

begin
  # Create an AWS integration
  result = api_instance.create_aws_account(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSIntegrationAPI->create_aws_account: #{e}"
end

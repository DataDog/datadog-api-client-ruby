require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::AWSIntegrationAPI.new
body = DatadogAPIClient::V1::AWSAccountDeleteRequest.new # AWSAccountDeleteRequest | AWS request object

begin
  # Delete an AWS integration
  result = api_instance.delete_aws_account(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSIntegrationAPI->delete_aws_account: #{e}"
end

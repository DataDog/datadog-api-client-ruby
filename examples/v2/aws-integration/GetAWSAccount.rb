# AWS Integration - Get account config returns "AWS Account object" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_aws_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AWSIntegrationAPI.new

# there is a valid "aws_account_v2" in the system
AWS_ACCOUNT_V2_DATA_ID = ENV["AWS_ACCOUNT_V2_DATA_ID"]
p api_instance.get_aws_account(AWS_ACCOUNT_V2_DATA_ID)

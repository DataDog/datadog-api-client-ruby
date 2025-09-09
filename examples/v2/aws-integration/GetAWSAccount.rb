# Get an AWS integration by config ID returns "AWS Account object" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AWSIntegrationAPI.new

# there is a valid "aws_account_v2" in the system
AWS_ACCOUNT_V2_DATA_ID = ENV["AWS_ACCOUNT_V2_DATA_ID"]
p api_instance.get_aws_account(AWS_ACCOUNT_V2_DATA_ID)

# AWS Integration - Get all account configs returns "AWS Accounts List object" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_aws_accounts".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AWSIntegrationAPI.new
p api_instance.list_aws_accounts()

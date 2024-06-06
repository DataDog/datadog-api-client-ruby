# AWS Integration - Delete account returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_aws_accountv2".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AWSIntegrationAPI.new
api_instance.delete_aws_accountv2("aws_account_config_id")

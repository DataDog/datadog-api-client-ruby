# Get AWS CCM config returns "AWS CCM Config object" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_aws_account_ccm_config".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AWSIntegrationAPI.new
p api_instance.get_aws_account_ccm_config("aws_account_config_id")

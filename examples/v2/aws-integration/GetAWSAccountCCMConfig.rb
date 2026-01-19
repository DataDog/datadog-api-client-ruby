# Get AWS CCM config returns "AWS CCM Config object" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AWSIntegrationAPI.new
p api_instance.get_aws_account_ccm_config("873c7e78-8915-4c7a-a3a7-33a57adf54f4")

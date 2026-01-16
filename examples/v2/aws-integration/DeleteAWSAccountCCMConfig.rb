# Delete AWS CCM config returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AWSIntegrationAPI.new
api_instance.delete_aws_account_ccm_config("873c7e78-8915-4c7a-a3a7-33a57adf54f4")

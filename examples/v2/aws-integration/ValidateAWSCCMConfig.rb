# Validate AWS CCM config returns "AWS CCM Config validation result" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.validate_awsccm_config".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AWSIntegrationAPI.new

body = DatadogAPIClient::V2::AWSCcmConfigValidationRequest.new({
  data: DatadogAPIClient::V2::AWSCcmConfigValidationRequestData.new({
    attributes: DatadogAPIClient::V2::AWSCcmConfigValidationRequestAttributes.new({
      account_id: "123456789012",
      bucket_name: "billing",
      bucket_region: "us-east-1",
      report_name: "cost-and-usage-report",
      report_prefix: "reports",
    }),
    type: DatadogAPIClient::V2::AWSCcmConfigValidationType::CCM_CONFIG_VALIDATION,
  }),
})
p api_instance.validate_awsccm_config(body)

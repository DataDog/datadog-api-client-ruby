# Create AWS CCM config returns "AWS CCM Config object" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AWSIntegrationAPI.new

body = DatadogAPIClient::V2::AWSCcmConfigRequest.new({
  data: DatadogAPIClient::V2::AWSCcmConfigRequestData.new({
    attributes: DatadogAPIClient::V2::AWSCcmConfigRequestAttributes.new({
      ccm_config: DatadogAPIClient::V2::AWSCcmConfig.new({
        data_export_configs: [
          DatadogAPIClient::V2::DataExportConfig.new({
            bucket_name: "billing",
            bucket_region: "us-east-1",
            report_name: "cost-and-usage-report",
            report_prefix: "reports",
            report_type: "CUR2.0",
          }),
        ],
      }),
    }),
    type: DatadogAPIClient::V2::AWSCcmConfigType::CCM_CONFIG,
  }),
})
p api_instance.create_aws_account_ccm_config("873c7e78-8915-4c7a-a3a7-33a57adf54f4", body)

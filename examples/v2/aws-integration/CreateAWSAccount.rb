# Create an AWS integration returns "AWS Account object" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AWSIntegrationAPI.new

body = DatadogAPIClient::V2::AWSAccountCreateRequest.new({
  data: DatadogAPIClient::V2::AWSAccountCreateRequestData.new({
    attributes: DatadogAPIClient::V2::AWSAccountCreateRequestAttributes.new({
      account_tags: [
        "key:value",
      ],
      auth_config: DatadogAPIClient::V2::AWSAuthConfigKeys.new({
        access_key_id: "AKIAIOSFODNN7EXAMPLE",
        secret_access_key: "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY",
      }),
      aws_account_id: "123456789012",
      aws_partition: DatadogAPIClient::V2::AWSAccountPartition::AWS,
      ccm_config: DatadogAPIClient::V2::AWSCCMConfig.new({
        data_export_configs: [
          DatadogAPIClient::V2::DataExportConfig.new({
            bucket_name: "my-bucket",
            bucket_region: "us-east-1",
            report_name: "my-report",
            report_prefix: "reports",
            report_type: "CUR2.0",
          }),
        ],
      }),
      logs_config: DatadogAPIClient::V2::AWSLogsConfig.new({
        lambda_forwarder: DatadogAPIClient::V2::AWSLambdaForwarderConfig.new({
          lambdas: [
            "arn:aws:lambda:us-east-1:123456789012:function:DatadogLambdaLogForwarder",
          ],
          log_source_config: DatadogAPIClient::V2::AWSLambdaForwarderConfigLogSourceConfig.new({
            tag_filters: [
              DatadogAPIClient::V2::AWSLogSourceTagFilter.new({
                source: "s3",
                tags: [
                  "test:test",
                ],
              }),
            ],
          }),
          sources: [
            "s3",
          ],
        }),
      }),
      metrics_config: DatadogAPIClient::V2::AWSMetricsConfig.new({
        automute_enabled: true,
        collect_cloudwatch_alarms: true,
        collect_custom_metrics: true,
        enabled: true,
        tag_filters: [
          DatadogAPIClient::V2::AWSNamespaceTagFilter.new({
            namespace: "AWS/EC2",
            tags: [
              "key:value",
            ],
          }),
        ],
      }),
      resources_config: DatadogAPIClient::V2::AWSResourcesConfig.new({
        cloud_security_posture_management_collection: false,
        extended_collection: false,
      }),
      traces_config: DatadogAPIClient::V2::AWSTracesConfig.new({}),
    }),
    type: DatadogAPIClient::V2::AWSAccountType::ACCOUNT,
  }),
})
p api_instance.create_aws_account(body)

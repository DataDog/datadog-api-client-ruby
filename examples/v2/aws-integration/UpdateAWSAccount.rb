# Update an AWS integration returns "AWS Account object" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AWSIntegrationAPI.new

# there is a valid "aws_account_v2" in the system
AWS_ACCOUNT_V2_DATA_ID = ENV["AWS_ACCOUNT_V2_DATA_ID"]

body = DatadogAPIClient::V2::AWSAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::AWSAccountUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::AWSAccountUpdateRequestAttributes.new({
      account_tags: [
        "key:value",
      ],
      auth_config: DatadogAPIClient::V2::AWSAuthConfigRole.new({
        role_name: "DatadogIntegrationRole",
      }),
      aws_account_id: "123456789012",
      aws_partition: DatadogAPIClient::V2::AWSAccountPartition::AWS,
      ccm_config: DatadogAPIClient::V2::AWSCCMConfig.new({
        data_export_configs: [
          DatadogAPIClient::V2::DataExportConfig.new({
            bucket_name: "updated-bucket",
            bucket_region: "us-west-2",
            report_name: "updated-report",
            report_prefix: "cost-reports",
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
p api_instance.update_aws_account(AWS_ACCOUNT_V2_DATA_ID, body)

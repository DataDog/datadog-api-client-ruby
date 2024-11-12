# Create an AWS account returns "AWS Account object" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_aws_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AWSIntegrationAPI.new

body = DatadogAPIClient::V2::AWSAccountCreateRequest.new({
  data: DatadogAPIClient::V2::AWSAccountCreateRequestData.new({
    attributes: DatadogAPIClient::V2::AWSAccountCreateRequestAttributes.new({
      account_tags: [
        "key:value",
      ],
      auth_config: DatadogAPIClient::V2::AWSAuthConfigRole.new({
        role_name: "DatadogIntegrationRole",
      }),
      aws_account_id: "123456789012",
      aws_partition: DatadogAPIClient::V2::AWSAccountPartition::AWS,
      logs_config: DatadogAPIClient::V2::AWSLogsConfig.new({
        lambda_forwarder: DatadogAPIClient::V2::AWSLambdaForwarderConfig.new({
          lambdas: [
            "arn:aws:lambda:us-east-1:123456789012:function:DatadogLambdaLogForwarder",
          ],
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

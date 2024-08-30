# AWS Integration - Patch account config returns "AWS Account object" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_aws_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AWSIntegrationAPI.new

# there is a valid "aws_account_v2" in the system
AWS_ACCOUNT_V2_DATA_ATTRIBUTES_AWS_ACCOUNT_ID = ENV["AWS_ACCOUNT_V2_DATA_ATTRIBUTES_AWS_ACCOUNT_ID"]

body = DatadogAPIClient::V2::AWSAccountPatchRequest.new({
  data: DatadogAPIClient::V2::AWSAccountPatchRequestData.new({
    attributes: DatadogAPIClient::V2::AWSAccountPatchRequestAttributes.new({
      account_tags: [],
      auth_config: DatadogAPIClient::V2::AWSAuthConfigRole.new({
        role_name: "test",
      }),
      aws_account_id: AWS_ACCOUNT_V2_DATA_ATTRIBUTES_AWS_ACCOUNT_ID,
      aws_partition: DatadogAPIClient::V2::AWSAccountPartition::AWS,
      aws_regions: DatadogAPIClient::V2::AWSRegionsIncludeOnly.new({
        include_only: [
          "us-east-1",
        ],
      }),
      logs_config: DatadogAPIClient::V2::AWSLogsConfig.new({
        lambda_forwarder: DatadogAPIClient::V2::AWSLambdaForwarderConfig.new({
          lambdas: [],
          sources: [
            "s3",
          ],
        }),
      }),
      metrics_config: DatadogAPIClient::V2::AWSMetricsConfig.new({
        namespace_filters: DatadogAPIClient::V2::AWSNamespaceFiltersIncludeOnly.new({
          include_only: [
            "AWS/EC2",
          ],
        }),
        tag_filters: [
          DatadogAPIClient::V2::AWSNamespaceTagFilter.new({
            namespace: "AWS/EC2",
            tags: [],
          }),
        ],
      }),
      resources_config: DatadogAPIClient::V2::AWSResourcesConfig.new({}),
      traces_config: DatadogAPIClient::V2::AWSTracesConfig.new({
        xray_services: DatadogAPIClient::V2::XRayServicesIncludeOnly.new({
          include_only: [
            "AWS/AppSync",
          ],
        }),
      }),
    }),
    id: AWS_ACCOUNT_V2_DATA_ATTRIBUTES_AWS_ACCOUNT_ID,
    type: "account",
  }),
})
p api_instance.update_aws_account(AWS_ACCOUNT_V2_DATA_ATTRIBUTES_AWS_ACCOUNT_ID, body)

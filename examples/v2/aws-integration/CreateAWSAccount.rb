# AWS Integration - Create account config returns "AWS Account object" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_aws_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AWSIntegrationAPI.new

body = DatadogAPIClient::V2::AWSAccountCreateRequest.new({
  data: DatadogAPIClient::V2::AWSAccountCreateRequestData.new({
    attributes: DatadogAPIClient::V2::AWSAccountCreateRequestAttributes.new({
      account_tags: [],
      auth_config: DatadogAPIClient::V2::AWSAuthConfigRole.new({
        role_name: "test",
      }),
      aws_account_id: "123456789012",
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
    id: "123456789012",
    type: "account",
  }),
})
p api_instance.create_aws_account(body)

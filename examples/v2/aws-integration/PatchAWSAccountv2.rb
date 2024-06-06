# AWS Integration - Patch account returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.patch_aws_accountv2".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AWSIntegrationAPI.new

body = DatadogAPIClient::V2::AWSAccountPatchRequest.new({
  data: DatadogAPIClient::V2::AWSAccountPatch.new({
    attributes: DatadogAPIClient::V2::AWSAccountPatchAttributes.new({
      account_tags: [],
      auth_config: DatadogAPIClient::V2::AWSAuthConfig.new({}),
      aws_account_id: "123456789012",
      aws_regions: DatadogAPIClient::V2::AWSRegionsList.new({
        include_only: [
          "us-east-1",
        ],
      }),
      logs_config: DatadogAPIClient::V2::AWSLogs.new({
        lambda_forwarder: DatadogAPIClient::V2::AWSLambdaForwarder.new({
          lambdas: [],
          sources: [
            "s3",
          ],
        }),
      }),
      metrics_config: DatadogAPIClient::V2::AWSMetrics.new({
        namespace_filters: DatadogAPIClient::V2::AWSNamespacesList.new({
          exclude_only: [
            "AWS/EC2",
          ],
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
      resources_config: DatadogAPIClient::V2::AWSResources.new({}),
      traces_config: DatadogAPIClient::V2::AWSTraces.new({
        xray_services: DatadogAPIClient::V2::AWSXRayServicesList.new({
          include_only: [
            "AWS/AppSync",
          ],
        }),
      }),
    }),
    type: DatadogAPIClient::V2::AWSAccountType::AWS_ACCOUNT,
  }),
})
api_instance.patch_aws_accountv2("aws_account_config_id", body)

# Trigger tests from CI/CD pipelines returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

body = DatadogAPIClient::V1::SyntheticsCITestBody.new({
  tests: [
    DatadogAPIClient::V1::SyntheticsCITest.new({
      basic_auth: DatadogAPIClient::V1::SyntheticsBasicAuthWeb.new({
        password: "PaSSw0RD!",
        type: DatadogAPIClient::V1::SyntheticsBasicAuthWebType::WEB,
        username: "my_username",
      }),
      device_ids: [
        DatadogAPIClient::V1::SyntheticsDeviceID::CHROME_LAPTOP_LARGE,
      ],
      locations: [
        "aws:eu-west-3",
      ],
      metadata: DatadogAPIClient::V1::SyntheticsCIBatchMetadata.new({
        ci: DatadogAPIClient::V1::SyntheticsCIBatchMetadataCI.new({
          pipeline: DatadogAPIClient::V1::SyntheticsCIBatchMetadataPipeline.new({}),
          provider: DatadogAPIClient::V1::SyntheticsCIBatchMetadataProvider.new({}),
        }),
        git: DatadogAPIClient::V1::SyntheticsCIBatchMetadataGit.new({}),
      }),
      public_id: "aaa-aaa-aaa",
      _retry: DatadogAPIClient::V1::SyntheticsTestOptionsRetry.new({}),
    }),
  ],
})
p api_instance.trigger_ci_tests(body)

# Create an environment returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new

body = DatadogAPIClient::V2::CreateEnvironmentRequest.new({
  data: DatadogAPIClient::V2::CreateEnvironmentData.new({
    type: DatadogAPIClient::V2::CreateEnvironmentDataType::ENVIRONMENTS,
    attributes: DatadogAPIClient::V2::CreateEnvironmentAttributes.new({
      name: "Test Environment Example-Feature-Flag",
      queries: [
        "test-Example-Feature-Flag",
        "env-Example-Feature-Flag",
      ],
    }),
  }),
})
p api_instance.create_feature_flags_environment(body)

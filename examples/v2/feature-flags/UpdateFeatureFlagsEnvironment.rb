# Update an environment returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new

# there is a valid "environment" in the system
ENVIRONMENT_DATA_ID = ENV["ENVIRONMENT_DATA_ID"]

body = DatadogAPIClient::V2::UpdateEnvironmentRequest.new({
  data: DatadogAPIClient::V2::UpdateEnvironmentData.new({
    type: DatadogAPIClient::V2::UpdateEnvironmentDataType::ENVIRONMENTS,
    attributes: DatadogAPIClient::V2::UpdateEnvironmentAttributes.new({
      name: "Updated Test Environment Example-Feature-Flag",
      queries: [
        "updated-Example-Feature-Flag",
        "live-Example-Feature-Flag",
      ],
    }),
  }),
})
p api_instance.update_feature_flags_environment(ENVIRONMENT_DATA_ID, body)

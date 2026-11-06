# Update an environment to preserve enabled full evaluation data when omitted returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new

# there is a valid "environment_with_full_evaluation_data" in the system
ENVIRONMENT_WITH_FULL_EVALUATION_DATA_DATA_ID = ENV["ENVIRONMENT_WITH_FULL_EVALUATION_DATA_DATA_ID"]

body = DatadogAPIClient::V2::UpdateEnvironmentRequest.new({
  data: DatadogAPIClient::V2::UpdateEnvironmentData.new({
    type: DatadogAPIClient::V2::UpdateEnvironmentDataType::ENVIRONMENTS,
    attributes: DatadogAPIClient::V2::UpdateEnvironmentAttributes.new({
      name: "Updated Privacy Example-Feature-Flag",
      queries: [
        "updated-privacy-example-feature-flag",
      ],
    }),
  }),
})
p api_instance.update_feature_flags_environment(ENVIRONMENT_WITH_FULL_EVALUATION_DATA_DATA_ID, body)

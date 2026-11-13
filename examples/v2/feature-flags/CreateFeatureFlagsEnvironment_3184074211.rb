# Create an environment with full evaluation data false returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new

body = DatadogAPIClient::V2::CreateEnvironmentRequest.new({
  data: DatadogAPIClient::V2::CreateEnvironmentData.new({
    type: DatadogAPIClient::V2::CreateEnvironmentDataType::ENVIRONMENTS,
    attributes: DatadogAPIClient::V2::CreateEnvironmentAttributes.new({
      name: "Evaluation Privacy Example-Feature-Flag",
      queries: [
        "privacy-example-feature-flag",
      ],
      observe_full_evaluation_data: false,
    }),
  }),
})
p api_instance.create_feature_flags_environment(body)

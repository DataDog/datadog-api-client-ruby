# Create a flag change suggestion returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new

body = DatadogAPIClient::V2::CreateFlagSuggestionRequest.new({
  data: DatadogAPIClient::V2::CreateFlagSuggestionData.new({
    attributes: DatadogAPIClient::V2::CreateFlagSuggestionAttributes.new({
      action: "updated",
      comment: "Restrict this flag to server applications.",
      environment_id: "550e8400-e29b-41d4-a716-446655440001",
      notification_rule_targets: [
        "requester@example.com",
      ],
      property: "DISTRIBUTION_CHANNEL",
      suggestion: "SERVER",
      suggestion_metadata: DatadogAPIClient::V2::FeatureFlagSuggestionMetadataRequest.new({
        variant_id: "550e8400-e29b-41d4-a716-446655440002",
      }),
    }),
    type: DatadogAPIClient::V2::FeatureFlagSuggestionDataType::FLAG_SUGGESTIONS,
  }),
})
p api_instance.create_flag_suggestion("550e8400-e29b-41d4-a716-446655440000", body)

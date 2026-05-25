# Create a flag suggestion returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new

body = DatadogAPIClient::V2::CreateFlagSuggestionRequest.new({
  data: DatadogAPIClient::V2::CreateFlagSuggestionData.new({
    attributes: DatadogAPIClient::V2::CreateFlagSuggestionAttributes.new({
      action: DatadogAPIClient::V2::FlagSuggestionAction::ARCHIVED,
      comment: "Archive this deprecated flag",
      environment_id: "550e8400-e29b-41d4-a716-446655440001",
      notification_rule_targets: [
        "user@example.com",
      ],
      property: DatadogAPIClient::V2::FlagSuggestionProperty::FLAG,
      suggestion: "ENABLED",
      suggestion_metadata: DatadogAPIClient::V2::SuggestionMetadata.new({
        variant_id: "550e8400-e29b-41d4-a716-446655440005",
      }),
    }),
    type: DatadogAPIClient::V2::FlagSuggestionDataType::FLAG_SUGGESTIONS,
  }),
})
p api_instance.create_flag_suggestion("550e8400-e29b-41d4-a716-446655440000", body)

# Reject a flag suggestion returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new

body = DatadogAPIClient::V2::ReviewFlagSuggestionRequest.new({
  data: DatadogAPIClient::V2::ReviewFlagSuggestionData.new({
    attributes: DatadogAPIClient::V2::ReviewFlagSuggestionAttributes.new({
      comment: "Looks good, approved!",
    }),
    type: DatadogAPIClient::V2::FlagSuggestionEventDataType::FLAG_SUGGESTION_EVENTS,
  }),
})
p api_instance.reject_flag_suggestion("550e8400-e29b-41d4-a716-446655440020", body)

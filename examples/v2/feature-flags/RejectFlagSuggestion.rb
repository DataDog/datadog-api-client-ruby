# Reject a flag change suggestion returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new

body = DatadogAPIClient::V2::RejectFlagSuggestionRequest.new({
  data: DatadogAPIClient::V2::RejectFlagSuggestionData.new({
    attributes: DatadogAPIClient::V2::RejectFlagSuggestionAttributes.new({
      comment: "Keep the existing configuration.",
    }),
    type: DatadogAPIClient::V2::ReviewFlagSuggestionDataType::FLAG_SUGGESTION_EVENTS,
  }),
})
p api_instance.reject_flag_suggestion("550e8400-e29b-41d4-a716-446655440020", body)

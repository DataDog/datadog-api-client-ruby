# Approve a flag change suggestion returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new

body = DatadogAPIClient::V2::ApproveFlagSuggestionRequest.new({
  data: DatadogAPIClient::V2::ApproveFlagSuggestionData.new({
    attributes: DatadogAPIClient::V2::ApproveFlagSuggestionAttributes.new({
      apply: false,
      comment: "Approved for rollout.",
    }),
    type: DatadogAPIClient::V2::ReviewFlagSuggestionDataType::FLAG_SUGGESTION_EVENTS,
  }),
})
p api_instance.approve_flag_suggestion("550e8400-e29b-41d4-a716-446655440020", body)

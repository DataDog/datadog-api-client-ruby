# Submit feedback on an ownership inference returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_ownership_feedback".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CSMOwnershipAPI.new

body = DatadogAPIClient::V2::OwnershipFeedbackRequest.new({
  data: DatadogAPIClient::V2::OwnershipFeedbackRequestData.new({
    attributes: DatadogAPIClient::V2::OwnershipFeedbackRequestAttributes.new({
      action: DatadogAPIClient::V2::OwnershipFeedbackAction::CONFIRM,
      actor_handle: "user@example.com",
      actor_type: "user",
      corrected_owner_handle: "team-b",
      corrected_owner_type: "team",
      inference_checksum: "abc123",
      reason: "Confirmed by team lead.",
    }),
    type: DatadogAPIClient::V2::OwnershipFeedbackType::OWNERSHIP_FEEDBACK,
  }),
})
p api_instance.create_ownership_feedback("res-1", OwnershipOwnerType::TEAM, body)

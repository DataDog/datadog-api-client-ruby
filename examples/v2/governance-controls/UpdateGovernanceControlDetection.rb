# Update a governance control detection returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_governance_control_detection".to_sym] = true
end
api_instance = DatadogAPIClient::V2::GovernanceControlsAPI.new

body = DatadogAPIClient::V2::GovernanceControlDetectionUpdateRequest.new({
  data: DatadogAPIClient::V2::GovernanceControlDetectionUpdateData.new({
    attributes: DatadogAPIClient::V2::GovernanceControlDetectionUpdateAttributes.new({
      assigned_team: "platform-security",
      assigned_to: "11111111-2222-3333-4444-555555555555",
      mitigate_after: "2024-03-15T00:00:00Z",
      state: DatadogAPIClient::V2::GovernanceControlDetectionUpdateState::EXCEPTION,
    }),
    type: DatadogAPIClient::V2::GovernanceControlDetectionResourceType::GOVERNANCE_CONTROL_DETECTION,
  }),
})
p api_instance.update_governance_control_detection("detection_type", "detection_id", body)

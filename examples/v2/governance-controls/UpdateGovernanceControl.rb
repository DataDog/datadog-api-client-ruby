# Update a governance control returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_governance_control".to_sym] = true
end
api_instance = DatadogAPIClient::V2::GovernanceControlsAPI.new

body = DatadogAPIClient::V2::GovernanceControlUpdateRequest.new({
  data: DatadogAPIClient::V2::GovernanceControlUpdateData.new({
    attributes: DatadogAPIClient::V2::GovernanceControlUpdateAttributes.new({
      detection_frequency: "daily",
      mitigation_type: "revoke_api_key",
      name: "Unused API Keys",
      notification_frequency: "daily",
      notification_type: "slack",
    }),
    id: "0d4e6f8a-1b2c-3d4e-5f6a-7b8c9d0e1f2a",
    type: DatadogAPIClient::V2::GovernanceControlResourceType::GOVERNANCE_CONTROL,
  }),
})
p api_instance.update_governance_control("detection_type", body)

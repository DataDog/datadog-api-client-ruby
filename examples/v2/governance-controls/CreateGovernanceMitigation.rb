# Mitigate governance detections returns "Accepted" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_governance_mitigation".to_sym] = true
end
api_instance = DatadogAPIClient::V2::GovernanceControlsAPI.new

body = DatadogAPIClient::V2::GovernanceMitigationRequest.new({
  data: DatadogAPIClient::V2::GovernanceMitigationRequestData.new({
    attributes: DatadogAPIClient::V2::GovernanceMitigationRequestAttributes.new({
      detection_ids: [
        "3f9b2c1a-8d4e-4a6b-9c2f-1e7d5a0b3c4d",
      ],
      detection_type: "unused_api_keys",
      mitigation_type: "revoke_api_key",
    }),
    type: DatadogAPIClient::V2::GovernanceControlDetectionResourceType::GOVERNANCE_CONTROL_DETECTION,
  }),
})
p api_instance.create_governance_mitigation(body)

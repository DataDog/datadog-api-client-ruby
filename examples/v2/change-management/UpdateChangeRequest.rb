# Update a change request returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_change_request".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ChangeManagementAPI.new

body = DatadogAPIClient::V2::ChangeRequestUpdateRequest.new({
  data: DatadogAPIClient::V2::ChangeRequestUpdateData.new({
    attributes: DatadogAPIClient::V2::ChangeRequestUpdateAttributes.new({
      change_request_plan: "Updated deployment plan",
      change_request_risk: DatadogAPIClient::V2::ChangeRequestRiskLevel::LOW,
      change_request_type: DatadogAPIClient::V2::ChangeRequestChangeType::NORMAL,
      end_date: "2024-01-02T15:00:00Z",
      id: "CHM-1234",
      start_date: "2024-01-01T03:00:00Z",
    }),
    relationships: DatadogAPIClient::V2::ChangeRequestUpdateRelationships.new({
      change_request_decisions: DatadogAPIClient::V2::ChangeRequestDecisionsRelationship.new({
        data: [
          DatadogAPIClient::V2::ChangeRequestDecisionRelationshipData.new({
            id: "decision-id-0",
            type: DatadogAPIClient::V2::ChangeRequestDecisionResourceType::CHANGE_REQUEST_DECISION,
          }),
        ],
      }),
    }),
    type: DatadogAPIClient::V2::ChangeRequestResourceType::CHANGE_REQUEST,
  }),
  included: [
    DatadogAPIClient::V2::ChangeRequestDecisionCreateItem.new({
      attributes: DatadogAPIClient::V2::ChangeRequestDecisionCreateAttributes.new({
        change_request_status: DatadogAPIClient::V2::ChangeRequestDecisionStatusType::REQUESTED,
        request_reason: "Please review and approve this change",
      }),
      id: "decision-id-0",
      relationships: DatadogAPIClient::V2::ChangeRequestDecisionCreateRelationships.new({
        requested_user: DatadogAPIClient::V2::ChangeRequestUserRelationship.new({
          data: DatadogAPIClient::V2::ChangeRequestUserRelationshipData.new({
            id: "00000000-0000-0000-0000-000000000000",
            type: "user",
          }),
        }),
      }),
      type: DatadogAPIClient::V2::ChangeRequestDecisionResourceType::CHANGE_REQUEST_DECISION,
    }),
  ],
})
p api_instance.update_change_request("change_request_id", body)

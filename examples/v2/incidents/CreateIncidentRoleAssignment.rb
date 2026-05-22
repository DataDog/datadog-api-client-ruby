# Create an incident role assignment returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_incident_role_assignment".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentRoleAssignmentRequest.new({
  data: DatadogAPIClient::V2::IncidentRoleAssignmentDataRequest.new({
    attributes: DatadogAPIClient::V2::IncidentRoleAssignmentDataAttributesRequest.new({
      role: "commander",
    }),
    relationships: DatadogAPIClient::V2::IncidentRoleAssignmentRelationshipsRequest.new({
      reserved_role: DatadogAPIClient::V2::IncidentRoleAssignmentRoleRelationship.new({
        data: DatadogAPIClient::V2::IncidentRoleAssignmentRoleRelationshipData.new({
          id: "00000000-0000-0000-0000-000000000000",
          type: "incident_reserved_roles",
        }),
      }),
      responder: DatadogAPIClient::V2::IncidentRoleAssignmentResponderRelationship.new({
        data: DatadogAPIClient::V2::IncidentRoleAssignmentResponderRelationshipData.new({
          id: "00000000-0000-0000-0000-000000000000",
          type: "users",
        }),
      }),
      user_defined_role: DatadogAPIClient::V2::IncidentRoleAssignmentRoleRelationship.new({
        data: DatadogAPIClient::V2::IncidentRoleAssignmentRoleRelationshipData.new({
          id: "00000000-0000-0000-0000-000000000000",
          type: "incident_reserved_roles",
        }),
      }),
    }),
    type: DatadogAPIClient::V2::IncidentRoleAssignmentType::INCIDENT_ROLE_ASSIGNMENTS,
  }),
})
p api_instance.create_incident_role_assignment(body)

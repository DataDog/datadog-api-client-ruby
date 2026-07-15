# Create an incident user-defined role returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_incident_user_defined_role".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentUserDefinedRoleRequest.new({
  data: DatadogAPIClient::V2::IncidentUserDefinedRoleDataRequest.new({
    attributes: DatadogAPIClient::V2::IncidentUserDefinedRoleDataAttributesRequest.new({
      description: "The technical lead for the incident.",
      name: "Tech Lead",
      policy: DatadogAPIClient::V2::IncidentUserDefinedRolePolicy.new({
        is_single: true,
      }),
    }),
    relationships: DatadogAPIClient::V2::IncidentUserDefinedRoleRelationshipsRequest.new({
      incident_type: DatadogAPIClient::V2::IncidentUserDefinedRoleIncidentTypeRelationship.new({
        data: DatadogAPIClient::V2::IncidentUserDefinedRoleIncidentTypeRelationshipData.new({
          id: "00000000-0000-0000-0000-000000000001",
          type: "incident_types",
        }),
      }),
    }),
    type: DatadogAPIClient::V2::IncidentUserDefinedRoleType::INCIDENT_USER_DEFINED_ROLES,
  }),
})
p api_instance.create_incident_user_defined_role(body)

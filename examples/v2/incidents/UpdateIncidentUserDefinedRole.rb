# Update an incident user-defined role returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_incident_user_defined_role".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentUserDefinedRolePatchRequest.new({
  data: DatadogAPIClient::V2::IncidentUserDefinedRolePatchDataRequest.new({
    attributes: DatadogAPIClient::V2::IncidentUserDefinedRolePatchDataAttributesRequest.new({
      description: "The technical lead for the incident.",
      name: "Tech Lead",
      policy: DatadogAPIClient::V2::IncidentUserDefinedRolePolicy.new({
        is_single: true,
      }),
    }),
    id: "00000000-0000-0000-0000-000000000002",
    type: DatadogAPIClient::V2::IncidentUserDefinedRoleType::INCIDENT_USER_DEFINED_ROLES,
  }),
})
p api_instance.update_incident_user_defined_role("00000000-0000-0000-0000-000000000002", body)

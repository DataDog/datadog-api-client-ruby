# Update an incident impact returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.patch_incident_impact".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentImpactPatchRequest.new({
  data: DatadogAPIClient::V2::IncidentImpactPatchData.new({
    attributes: DatadogAPIClient::V2::IncidentImpactPatchAttributes.new({
      description: "Service was unavailable for external users",
      end_at: "2025-08-29T13:17:00Z",
      fields: DatadogAPIClient::V2::IncidentImpactFieldsObject.new({}),
      start_at: "2025-08-28T13:17:00Z",
    }),
    type: DatadogAPIClient::V2::IncidentImpactType::INCIDENT_IMPACTS,
  }),
})
p api_instance.patch_incident_impact("incident_id", "impact_id", body)

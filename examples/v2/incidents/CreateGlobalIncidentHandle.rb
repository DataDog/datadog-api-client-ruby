# Create global incident handle returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_global_incident_handle".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentHandleRequest.new({
  data: DatadogAPIClient::V2::IncidentHandleDataRequest.new({
    attributes: DatadogAPIClient::V2::IncidentHandleAttributesRequest.new({
      fields: DatadogAPIClient::V2::IncidentHandleAttributesFields.new({
        severity: [
          "SEV-1",
        ],
      }),
      name: "@incident-sev-1",
    }),
    id: "b2494081-cdf0-4205-b366-4e1dd4fdf0bf",
    relationships: DatadogAPIClient::V2::IncidentHandleRelationshipsRequest.new({
      commander_user: DatadogAPIClient::V2::IncidentHandleRelationship.new({
        data: DatadogAPIClient::V2::IncidentHandleRelationshipData.new({
          id: "f7b538b1-ed7c-4e84-82de-fdf84a539d40",
          type: "incident_types",
        }),
      }),
      incident_type: DatadogAPIClient::V2::IncidentHandleRelationship.new({
        data: DatadogAPIClient::V2::IncidentHandleRelationshipData.new({
          id: "f7b538b1-ed7c-4e84-82de-fdf84a539d40",
          type: "incident_types",
        }),
      }),
    }),
    type: DatadogAPIClient::V2::IncidentHandleType::INCIDENTS_HANDLES,
  }),
})
p api_instance.create_global_incident_handle(body)

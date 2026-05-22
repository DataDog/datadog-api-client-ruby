# Update an incident communication returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_incident_communication".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentCommunicationRequest.new({
  data: DatadogAPIClient::V2::IncidentCommunicationDataRequest.new({
    attributes: DatadogAPIClient::V2::IncidentCommunicationDataAttributesRequest.new({
      communication_type: DatadogAPIClient::V2::IncidentCommunicationKind::MANUAL,
      content: DatadogAPIClient::V2::IncidentCommunicationContent.new({
        grouping_key: "update-1",
        handles: [
          DatadogAPIClient::V2::IncidentCommunicationContentHandle.new({
            created_at: "2024-01-01T00:00:00.000Z",
            display_name: "#incidents-channel",
            handle: "@slack-incidents-channel",
          }),
        ],
        message: "Incident update for INC-123.",
        status: 0,
        subject: "Incident INC-123: Update",
      }),
    }),
    type: DatadogAPIClient::V2::IncidentCommunicationType::COMMUNICATION,
  }),
})
p api_instance.update_incident_communication("incident_id", "9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)

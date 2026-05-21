# Create an incident Zoom meeting returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_incident_zoom_meeting".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentCreateZoomMeetingRequest.new({
  data: DatadogAPIClient::V2::IncidentCreateZoomMeetingData.new({
    attributes: DatadogAPIClient::V2::IncidentCreateZoomMeetingDataAttributes.new({
      topic: "Incident INC-123 War Room",
    }),
    type: DatadogAPIClient::V2::IncidentZoomIntegrationType::INCIDENT_INTEGRATIONS,
  }),
})
p api_instance.create_incident_zoom_meeting("incident_id", body)

# Create an incident Zoom configuration returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_incident_zoom_configuration".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentZoomConfigurationRequest.new({
  data: DatadogAPIClient::V2::IncidentZoomConfigurationDataRequest.new({
    attributes: DatadogAPIClient::V2::IncidentZoomConfigurationDataAttributesRequest.new({
      manual_meeting_creation: false,
      meeting_chat_timeline_sync: false,
      post_meeting_summary: true,
    }),
    type: DatadogAPIClient::V2::IncidentZoomConfigurationType::ZOOM_CONFIGURATIONS,
  }),
})
p api_instance.create_incident_zoom_configuration(body)

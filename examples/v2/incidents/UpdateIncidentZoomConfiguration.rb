# Update an incident Zoom configuration returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_incident_zoom_configuration".to_sym] = true
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
p api_instance.update_incident_zoom_configuration("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)

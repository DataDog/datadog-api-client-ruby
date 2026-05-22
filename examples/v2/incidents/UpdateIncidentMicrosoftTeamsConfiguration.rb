# Update an incident Microsoft Teams configuration returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_incident_microsoft_teams_configuration".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentMicrosoftTeamsConfigurationRequest.new({
  data: DatadogAPIClient::V2::IncidentMicrosoftTeamsConfigurationDataRequest.new({
    attributes: DatadogAPIClient::V2::IncidentMicrosoftTeamsConfigurationDataAttributesRequest.new({
      manual_meeting_creation: false,
      post_meeting_summary: true,
    }),
    type: DatadogAPIClient::V2::IncidentMicrosoftTeamsConfigurationType::MICROSOFT_TEAMS_CONFIGURATIONS,
  }),
})
p api_instance.update_incident_microsoft_teams_configuration("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)

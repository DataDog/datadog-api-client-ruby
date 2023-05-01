# Create a new incident team returns "CREATED" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_incident_team".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentTeamsAPI.new

body = DatadogAPIClient::V2::IncidentTeamCreateRequest.new({
  data: DatadogAPIClient::V2::IncidentTeamCreateData.new({
    type: DatadogAPIClient::V2::IncidentTeamType::TEAMS,
    attributes: DatadogAPIClient::V2::IncidentTeamCreateAttributes.new({
      name: "Example-Incident-Team",
    }),
  }),
})
p api_instance.create_incident_team(body)

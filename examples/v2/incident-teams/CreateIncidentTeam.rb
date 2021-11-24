# Create a new incident team returns "CREATED" response

require "datadog_api_client"
DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:create_incident_team] = true
end
api_instance = DatadogAPIClient::V2::IncidentTeamsAPI.new

body = DatadogAPIClient::V2::IncidentTeamCreateRequest.new({
  data: DatadogAPIClient::V2::IncidentTeamCreateData.new({
    type: DatadogAPIClient::V2::IncidentTeamType::TEAMS,
    attributes: DatadogAPIClient::V2::IncidentTeamCreateAttributes.new({
      name: "Example-Create_a_new_incident_team_returns_CREATED_response",
    }),
  }),
})
p api_instance.create_incident_team(body)

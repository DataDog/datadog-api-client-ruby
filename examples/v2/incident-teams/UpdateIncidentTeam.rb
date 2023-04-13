# Update an existing incident team returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_incident_team".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentTeamsAPI.new

# there is a valid "team" in the system
TEAM_DATA_ATTRIBUTES_NAME = ENV["TEAM_DATA_ATTRIBUTES_NAME"]
TEAM_DATA_ID = ENV["TEAM_DATA_ID"]

body = DatadogAPIClient::V2::IncidentTeamUpdateRequest.new({
  data: DatadogAPIClient::V2::IncidentTeamUpdateData.new({
    type: DatadogAPIClient::V2::IncidentTeamType::TEAMS,
    attributes: DatadogAPIClient::V2::IncidentTeamUpdateAttributes.new({
      name: "team name-updated",
    }),
  }),
})
p api_instance.update_incident_team(TEAM_DATA_ID, body)

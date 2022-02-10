require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:update_incident_team] = true
end

api_instance = DatadogAPIClient::V2::IncidentTeamsAPI.new
team_id = 'team_id_example' # String | The ID of the incident team.
body = DatadogAPIClient::V2::IncidentTeamUpdateRequest.new({data: DatadogAPIClient::V2::IncidentTeamUpdateData.new({type: DatadogAPIClient::V2::IncidentTeamType::TEAMS})}) # IncidentTeamUpdateRequest | Incident Team Payload.

begin
  # Update an existing incident team
  result = api_instance.update_incident_team(team_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentTeamsAPI->update_incident_team: #{e}"
end

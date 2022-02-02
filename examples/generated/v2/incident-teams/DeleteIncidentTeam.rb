require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:delete_incident_team] = true
end

api_instance = DatadogAPIClient::V2::IncidentTeamsAPI.new
team_id = 'team_id_example' # String | The ID of the incident team.

begin
  # Delete an existing incident team
  api_instance.delete_incident_team(team_id)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentTeamsAPI->delete_incident_team: #{e}"
end

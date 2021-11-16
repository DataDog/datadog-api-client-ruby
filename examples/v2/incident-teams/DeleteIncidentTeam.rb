# Delete an existing incident team returns "OK" response

require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::IncidentTeamsAPI.new

# there is a valid "team" in the system
TEAM_DATA_ID = ENV["TEAM_DATA_ID"]
api_instance.delete_incident_team(TEAM_DATA_ID)

# Get details of an incident team returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_incident_team".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentTeamsAPI.new

# there is a valid "team" in the system
TEAM_DATA_ID = ENV["TEAM_DATA_ID"]
p api_instance.get_incident_team(TEAM_DATA_ID)

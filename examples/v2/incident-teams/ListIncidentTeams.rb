# Get a list of all incident teams returns "OK" response

require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::IncidentTeamsAPI.new

# there is a valid "team" in the system
TEAM_DATA_ATTRIBUTES_NAME = ENV["TEAM_DATA_ATTRIBUTES_NAME"]
opts = { filter: TEAM_DATA_ATTRIBUTES_NAME }
p api_instance.list_incident_teams(opts)

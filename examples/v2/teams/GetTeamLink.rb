# Get a team link returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamsAPI.new

# there is a valid "dd_team" in the system
DD_TEAM_DATA_ID = ENV["DD_TEAM_DATA_ID"]

# there is a valid "team_link" in the system
TEAM_LINK_DATA_ID = ENV["TEAM_LINK_DATA_ID"]
p api_instance.get_team_link(DD_TEAM_DATA_ID, TEAM_LINK_DATA_ID)

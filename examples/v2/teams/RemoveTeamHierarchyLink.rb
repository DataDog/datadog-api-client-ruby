# Remove a team hierarchy link returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamsAPI.new

# there is a valid "team_hierarchy_link" in the system
TEAM_HIERARCHY_LINK_DATA_ID = ENV["TEAM_HIERARCHY_LINK_DATA_ID"]
api_instance.remove_team_hierarchy_link(TEAM_HIERARCHY_LINK_DATA_ID)

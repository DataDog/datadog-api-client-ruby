# Remove a team hierarchy link returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamsAPI.new
api_instance.remove_team_hierarchy_link("link_id")

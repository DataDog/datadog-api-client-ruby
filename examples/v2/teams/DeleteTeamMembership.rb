# Remove a user from a team returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamsAPI.new

# there is a valid "dd_team" in the system
DD_TEAM_DATA_ID = ENV["DD_TEAM_DATA_ID"]
api_instance.delete_team_membership(DD_TEAM_DATA_ID, "user_id")

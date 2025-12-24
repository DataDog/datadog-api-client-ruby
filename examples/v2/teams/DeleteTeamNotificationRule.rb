# Delete team notification rule returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamsAPI.new

# there is a valid "dd_team" in the system
DD_TEAM_DATA_ID = ENV["DD_TEAM_DATA_ID"]

# there is a valid "team_notification_rule" in the system
TEAM_NOTIFICATION_RULE_DATA_ID = ENV["TEAM_NOTIFICATION_RULE_DATA_ID"]
api_instance.delete_team_notification_rule(DD_TEAM_DATA_ID, TEAM_NOTIFICATION_RULE_DATA_ID)

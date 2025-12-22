# Delete team notification rule returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamsAPI.new
api_instance.delete_team_notification_rule("rule_id", "team_id")

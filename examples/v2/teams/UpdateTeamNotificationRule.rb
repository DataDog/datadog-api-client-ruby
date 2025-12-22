# Update team notification rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamsAPI.new

body = DatadogAPIClient::V2::TeamNotificationRule.new({
  attributes: DatadogAPIClient::V2::TeamNotificationRuleAttributes.new({
    email: DatadogAPIClient::V2::TeamNotificationRuleAttributesEmail.new({}),
    ms_teams: DatadogAPIClient::V2::TeamNotificationRuleAttributesMsTeams.new({}),
    pagerduty: DatadogAPIClient::V2::TeamNotificationRuleAttributesPagerduty.new({}),
    slack: DatadogAPIClient::V2::TeamNotificationRuleAttributesSlack.new({}),
  }),
  id: "b8626d7e-cedd-11eb-abf5-da7ad0900001",
})
p api_instance.update_team_notification_rule("rule_id", "team_id", body)

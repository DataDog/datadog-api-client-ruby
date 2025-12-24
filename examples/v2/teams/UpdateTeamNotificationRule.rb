# Update team notification rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamsAPI.new

# there is a valid "dd_team" in the system
DD_TEAM_DATA_ID = ENV["DD_TEAM_DATA_ID"]

# there is a valid "team_notification_rule" in the system
TEAM_NOTIFICATION_RULE_DATA_ID = ENV["TEAM_NOTIFICATION_RULE_DATA_ID"]

body = DatadogAPIClient::V2::TeamNotificationRuleRequest.new({
  data: DatadogAPIClient::V2::TeamNotificationRule.new({
    type: DatadogAPIClient::V2::TeamNotificationRuleType::TEAM_NOTIFICATION_RULES,
    id: TEAM_NOTIFICATION_RULE_DATA_ID,
    attributes: DatadogAPIClient::V2::TeamNotificationRuleAttributes.new({
      pagerduty: DatadogAPIClient::V2::TeamNotificationRuleAttributesPagerduty.new({
        service_name: "Datadog-prod",
      }),
      slack: DatadogAPIClient::V2::TeamNotificationRuleAttributesSlack.new({
        workspace: "Datadog",
        channel: "aaa-governance-ops",
      }),
    }),
  }),
})
p api_instance.update_team_notification_rule(DD_TEAM_DATA_ID, TEAM_NOTIFICATION_RULE_DATA_ID, body)

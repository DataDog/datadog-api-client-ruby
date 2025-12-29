# Create team notification rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamsAPI.new

# there is a valid "dd_team" in the system
DD_TEAM_DATA_ID = ENV["DD_TEAM_DATA_ID"]

body = DatadogAPIClient::V2::TeamNotificationRuleRequest.new({
  data: DatadogAPIClient::V2::TeamNotificationRule.new({
    type: DatadogAPIClient::V2::TeamNotificationRuleType::TEAM_NOTIFICATION_RULES,
    attributes: DatadogAPIClient::V2::TeamNotificationRuleAttributes.new({
      email: DatadogAPIClient::V2::TeamNotificationRuleAttributesEmail.new({
        enabled: true,
      }),
      slack: DatadogAPIClient::V2::TeamNotificationRuleAttributesSlack.new({
        workspace: "Datadog",
        channel: "aaa-omg-ops",
      }),
    }),
  }),
})
p api_instance.create_team_notification_rule(DD_TEAM_DATA_ID, body)

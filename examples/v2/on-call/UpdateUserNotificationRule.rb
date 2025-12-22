# Update an On-Call notification rule for a user returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OnCallAPI.new

# there is a valid "user" in the system
USER_DATA_ID = ENV["USER_DATA_ID"]

# there is a valid "oncall_email_notification_rule" in the system
ONCALL_EMAIL_NOTIFICATION_RULE_DATA_ID = ENV["ONCALL_EMAIL_NOTIFICATION_RULE_DATA_ID"]

# there is a valid "oncall_email_notification_channel" in the system
ONCALL_EMAIL_NOTIFICATION_CHANNEL_DATA_ID = ENV["ONCALL_EMAIL_NOTIFICATION_CHANNEL_DATA_ID"]

body = DatadogAPIClient::V2::UpdateOnCallNotificationRuleRequest.new({
  data: DatadogAPIClient::V2::UpdateOnCallNotificationRuleRequestData.new({
    attributes: DatadogAPIClient::V2::UpdateOnCallNotificationRuleRequestAttributes.new({
      category: DatadogAPIClient::V2::OnCallNotificationRuleCategory::HIGH_URGENCY,
      delay_minutes: 1,
    }),
    id: ONCALL_EMAIL_NOTIFICATION_RULE_DATA_ID,
    relationships: DatadogAPIClient::V2::OnCallNotificationRuleRelationships.new({
      channel: DatadogAPIClient::V2::OnCallNotificationRuleChannelRelationship.new({
        data: DatadogAPIClient::V2::OnCallNotificationRuleChannelRelationshipData.new({
          id: ONCALL_EMAIL_NOTIFICATION_CHANNEL_DATA_ID,
          type: DatadogAPIClient::V2::NotificationChannelType::NOTIFICATION_CHANNELS,
        }),
      }),
    }),
    type: DatadogAPIClient::V2::OnCallNotificationRuleType::NOTIFICATION_RULES,
  }),
})
opts = {
  include: "channel",
}
p api_instance.update_user_notification_rule(USER_DATA_ID, ONCALL_EMAIL_NOTIFICATION_RULE_DATA_ID, body, opts)

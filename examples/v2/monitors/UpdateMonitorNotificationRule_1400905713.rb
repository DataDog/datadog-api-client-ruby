# Update a monitor notification rule with conditional_recipients returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MonitorsAPI.new

# there is a valid "monitor_notification_rule" in the system
MONITOR_NOTIFICATION_RULE_DATA_ID = ENV["MONITOR_NOTIFICATION_RULE_DATA_ID"]

body = DatadogAPIClient::V2::MonitorNotificationRuleUpdateRequest.new({
  data: DatadogAPIClient::V2::MonitorNotificationRuleUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::MonitorNotificationRuleAttributes.new({
      filter: DatadogAPIClient::V2::MonitorNotificationRuleFilterTags.new({
        tags: [
          "test:example-monitor",
          "host:abc",
        ],
      }),
      name: "updated rule",
      conditional_recipients: DatadogAPIClient::V2::MonitorNotificationRuleConditionalRecipients.new({
        conditions: [
          DatadogAPIClient::V2::MonitorNotificationRuleCondition.new({
            scope: "transition_type:is_alert",
            recipients: [
              "slack-test-channel",
              "jira-test",
            ],
          }),
        ],
      }),
    }),
    id: MONITOR_NOTIFICATION_RULE_DATA_ID,
    type: DatadogAPIClient::V2::MonitorNotificationRuleResourceType::MONITOR_NOTIFICATION_RULE,
  }),
})
p api_instance.update_monitor_notification_rule(MONITOR_NOTIFICATION_RULE_DATA_ID, body)

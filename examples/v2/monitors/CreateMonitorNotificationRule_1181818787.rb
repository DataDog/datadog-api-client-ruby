# Create a monitor notification rule with conditional recipients returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MonitorsAPI.new

body = DatadogAPIClient::V2::MonitorNotificationRuleCreateRequest.new({
  data: DatadogAPIClient::V2::MonitorNotificationRuleCreateRequestData.new({
    attributes: DatadogAPIClient::V2::MonitorNotificationRuleAttributes.new({
      filter: DatadogAPIClient::V2::MonitorNotificationRuleFilterTags.new({
        tags: [
          "test:example-monitor",
        ],
      }),
      name: "test rule",
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
    type: DatadogAPIClient::V2::MonitorNotificationRuleResourceType::MONITOR_NOTIFICATION_RULE,
  }),
})
p api_instance.create_monitor_notification_rule(body)

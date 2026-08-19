# Create a monitor notification rule with bundle config returns "OK" response

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
      recipients: [
        "slack-test-channel",
      ],
      bundle_config: DatadogAPIClient::V2::MonitorNotificationRuleBundleConfig.new({
        duration: 3600,
      }),
    }),
    type: DatadogAPIClient::V2::MonitorNotificationRuleResourceType::MONITOR_NOTIFICATION_RULE,
  }),
})
p api_instance.create_monitor_notification_rule(body)

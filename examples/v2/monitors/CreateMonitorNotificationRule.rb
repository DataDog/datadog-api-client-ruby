# Create a monitor notification rule returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_monitor_notification_rule".to_sym] = true
end
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
        "jira-test",
      ],
    }),
    type: DatadogAPIClient::V2::MonitorNotificationRuleResourceType::MONITOR_NOTIFICATION_RULE,
  }),
})
p api_instance.create_monitor_notification_rule(body)

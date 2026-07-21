# Update governance control notification settings returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_governance_control_notification_settings".to_sym] = true
end
api_instance = DatadogAPIClient::V2::GovernanceControlsAPI.new

body = DatadogAPIClient::V2::ControlNotificationSettingsUpdateRequest.new({
  data: DatadogAPIClient::V2::ControlNotificationSettingsUpdateData.new({
    attributes: DatadogAPIClient::V2::ControlNotificationSettingsUpdateAttributes.new({
      event_settings: [
        DatadogAPIClient::V2::ControlNotificationEventSetting.new({
          enabled: true,
          event_type: "new_detection",
          targets: [
            DatadogAPIClient::V2::ControlNotificationTarget.new({
              handle: "#governance-alerts",
              type: DatadogAPIClient::V2::ControlNotificationTargetType::SLACK,
            }),
          ],
        }),
      ],
    }),
    type: DatadogAPIClient::V2::ControlNotificationSettingsResourceType::CONTROL_NOTIFICATION_SETTINGS,
  }),
})
p api_instance.update_governance_control_notification_settings("detection_type", body)

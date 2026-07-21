# Update governance notification settings returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_governance_notification_settings".to_sym] = true
end
api_instance = DatadogAPIClient::V2::GovernanceSettingsAPI.new

body = DatadogAPIClient::V2::GovernanceNotificationSettingsUpdateRequest.new({
  data: DatadogAPIClient::V2::GovernanceNotificationSettingsUpdateData.new({
    attributes: DatadogAPIClient::V2::GovernanceNotificationSettingsUpdateAttributes.new({
      assignment_notifications_enabled: true,
    }),
    type: DatadogAPIClient::V2::GovernanceNotificationSettingsResourceType::GOVERNANCE_NOTIFICATION_SETTINGS,
  }),
})
p api_instance.update_governance_notification_settings(body)

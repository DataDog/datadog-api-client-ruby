# Get governance notification settings returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_governance_notification_settings".to_sym] = true
end
api_instance = DatadogAPIClient::V2::GovernanceSettingsAPI.new
p api_instance.get_governance_notification_settings()

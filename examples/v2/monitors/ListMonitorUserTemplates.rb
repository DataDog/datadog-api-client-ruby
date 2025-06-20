# Get all monitor user templates returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_monitor_user_templates".to_sym] = true
end
api_instance = DatadogAPIClient::V2::MonitorsAPI.new
p api_instance.list_monitor_user_templates()

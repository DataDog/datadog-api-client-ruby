# Get a monitor user template returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_monitor_user_template".to_sym] = true
end
api_instance = DatadogAPIClient::V2::MonitorsAPI.new

# there is a valid "monitor_user_template" in the system
MONITOR_USER_TEMPLATE_DATA_ID = ENV["MONITOR_USER_TEMPLATE_DATA_ID"]
p api_instance.get_monitor_user_template(MONITOR_USER_TEMPLATE_DATA_ID)

# Delete a monitor user template returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_monitor_user_template".to_sym] = true
end
api_instance = DatadogAPIClient::V2::MonitorsAPI.new
api_instance.delete_monitor_user_template("template_id")

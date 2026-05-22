# Delete an entity context sync configuration returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_security_monitoring_integration_config".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
api_instance.delete_security_monitoring_integration_config("integration_config_id")

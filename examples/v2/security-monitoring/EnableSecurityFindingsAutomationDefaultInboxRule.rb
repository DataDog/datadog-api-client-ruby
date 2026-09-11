# Enable a default inbox rule returns "Successfully enabled the default inbox rule" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.enable_security_findings_automation_default_inbox_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
p api_instance.enable_security_findings_automation_default_inbox_rule("secret_default_rule")

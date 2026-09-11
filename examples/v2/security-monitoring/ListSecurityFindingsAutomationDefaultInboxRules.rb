# Get all default inbox rules returns "Successfully retrieved the list of default inbox rules" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_security_findings_automation_default_inbox_rules".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
p api_instance.list_security_findings_automation_default_inbox_rules()

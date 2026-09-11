# Delete a due date rule returns "Successfully deleted the due date rule" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_security_findings_automation_due_date_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
api_instance.delete_security_findings_automation_due_date_rule("00000000-0000-0000-0000-000000000000")

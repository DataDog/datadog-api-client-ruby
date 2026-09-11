# Delete a due date rule returns "Rule successfully deleted." response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_security_findings_automation_due_date_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "valid_due_date_rule" in the system
VALID_DUE_DATE_RULE_DATA_ID = ENV["VALID_DUE_DATE_RULE_DATA_ID"]
api_instance.delete_security_findings_automation_due_date_rule(VALID_DUE_DATE_RULE_DATA_ID)

# Delete an inbox rule returns "Successfully deleted the inbox rule" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_security_findings_automation_inbox_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "valid_inbox_rule" in the system
VALID_INBOX_RULE_DATA_ID = ENV["VALID_INBOX_RULE_DATA_ID"]
api_instance.delete_security_findings_automation_inbox_rule(VALID_INBOX_RULE_DATA_ID)

# Delete a ticket creation rule returns "Successfully deleted the ticket creation rule" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_security_findings_automation_ticket_creation_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
api_instance.delete_security_findings_automation_ticket_creation_rule("00000000-0000-0000-0000-000000000000")

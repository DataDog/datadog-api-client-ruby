# Reorder ticket creation rules returns "Successfully reordered the ticket creation rules" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.reorder_security_findings_automation_ticket_creation_rules".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "valid_ticket_creation_rule" in the system
VALID_TICKET_CREATION_RULE_DATA_ID = ENV["VALID_TICKET_CREATION_RULE_DATA_ID"]

body = DatadogAPIClient::V2::TicketCreationRuleReorderRequest.new({
  data: [
    DatadogAPIClient::V2::TicketCreationRuleReorderItem.new({
      id: VALID_TICKET_CREATION_RULE_DATA_ID,
      type: DatadogAPIClient::V2::TicketCreationRuleType::TICKET_CREATION_RULES,
    }),
  ],
})
p api_instance.reorder_security_findings_automation_ticket_creation_rules(body)

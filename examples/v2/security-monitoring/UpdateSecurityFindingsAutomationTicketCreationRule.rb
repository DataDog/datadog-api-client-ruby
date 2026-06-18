# Update a ticket creation rule returns "Successfully updated the ticket creation rule" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_security_findings_automation_ticket_creation_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "valid_ticket_creation_rule" in the system
VALID_TICKET_CREATION_RULE_DATA_ID = ENV["VALID_TICKET_CREATION_RULE_DATA_ID"]

body = DatadogAPIClient::V2::TicketCreationRuleUpdateRequest.new({
  data: DatadogAPIClient::V2::TicketCreationRuleDataCreate.new({
    attributes: DatadogAPIClient::V2::TicketCreationRuleAttributesCreate.new({
      action: DatadogAPIClient::V2::TicketCreationRuleAction.new({
        max_tickets_per_day: 5,
        project_id: "11111111-1111-1111-1111-111111111111",
        target: DatadogAPIClient::V2::TicketCreationTarget::JIRA,
      }),
      enabled: false,
      name: "Example-Security-Monitoring",
      rule: DatadogAPIClient::V2::AutomationRuleScope.new({
        finding_types: [
          DatadogAPIClient::V2::SecurityFindingType::MISCONFIGURATION,
        ],
        query: "env:staging",
      }),
    }),
    type: DatadogAPIClient::V2::TicketCreationRuleType::TICKET_CREATION_RULES,
  }),
})
p api_instance.update_security_findings_automation_ticket_creation_rule(VALID_TICKET_CREATION_RULE_DATA_ID, body)

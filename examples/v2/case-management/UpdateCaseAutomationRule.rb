# Update an automation rule returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_case_automation_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

body = DatadogAPIClient::V2::AutomationRuleUpdateRequest.new({
  data: DatadogAPIClient::V2::AutomationRuleUpdate.new({
    attributes: DatadogAPIClient::V2::AutomationRuleCreateAttributes.new({
      action: DatadogAPIClient::V2::AutomationRuleAction.new({
        data: DatadogAPIClient::V2::AutomationRuleActionData.new({
          handle: "workflow-handle-123",
        }),
        type: DatadogAPIClient::V2::AutomationRuleActionType::EXECUTE_WORKFLOW,
      }),
      name: "Auto-assign workflow",
      state: DatadogAPIClient::V2::CaseAutomationRuleState::ENABLED,
      trigger: DatadogAPIClient::V2::AutomationRuleTrigger.new({
        data: DatadogAPIClient::V2::AutomationRuleTriggerData.new({}),
        type: DatadogAPIClient::V2::AutomationRuleTriggerType::CASE_CREATED,
      }),
    }),
    type: DatadogAPIClient::V2::CaseAutomationRuleResourceType::RULE,
  }),
})
p api_instance.update_case_automation_rule("project_id", "rule_id", body)

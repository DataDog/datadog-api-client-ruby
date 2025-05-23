# Update a Workload Protection agent rule (US1-FED) returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CSMThreatsAPI.new

# there is a valid "agent_rule" in the system
AGENT_RULE_DATA_ID = ENV["AGENT_RULE_DATA_ID"]

body = DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleUpdateRequest.new({
  data: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleUpdateData.new({
    attributes: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleUpdateAttributes.new({
      description: "Updated Agent rule",
      expression: 'exec.file.name == "sh"',
    }),
    id: AGENT_RULE_DATA_ID,
    type: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleType::AGENT_RULE,
  }),
})
p api_instance.update_cloud_workload_security_agent_rule(AGENT_RULE_DATA_ID, body)

# Update a Workload Protection agent rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CSMThreatsAPI.new

# there is a valid "agent_rule_rc" in the system
AGENT_RULE_DATA_ID = ENV["AGENT_RULE_DATA_ID"]

# there is a valid "policy_rc" in the system
POLICY_DATA_ID = ENV["POLICY_DATA_ID"]

body = DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleUpdateRequest.new({
  data: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleUpdateData.new({
    attributes: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleUpdateAttributes.new({
      description: "My Agent rule",
      enabled: true,
      expression: 'exec.file.name == "sh"',
      policy_id: POLICY_DATA_ID,
      product_tags: [],
    }),
    id: AGENT_RULE_DATA_ID,
    type: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleType::AGENT_RULE,
  }),
})
opts = {
  policy_id: POLICY_DATA_ID,
}
p api_instance.update_csm_threats_agent_rule(AGENT_RULE_DATA_ID, body, opts)

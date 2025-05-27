# Create a Workload Protection agent rule with set action returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CSMThreatsAPI.new

# there is a valid "policy_rc" in the system
POLICY_DATA_ID = ENV["POLICY_DATA_ID"]

body = DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateRequest.new({
  data: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateData.new({
    attributes: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateAttributes.new({
      description: "My Agent rule with set action",
      enabled: true,
      expression: 'exec.file.name == "sh"',
      filters: [],
      name: "examplecsmthreat",
      policy_id: POLICY_DATA_ID,
      product_tags: [],
      actions: [
        DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleAction.new({
          set: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleActionSet.new({
            name: "test_set",
            value: "test_value",
            scope: "process",
          }),
        }),
      ],
    }),
    type: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleType::AGENT_RULE,
  }),
})
p api_instance.create_csm_threats_agent_rule(body)

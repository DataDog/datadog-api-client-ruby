# Update a CSM Threats Agent rule returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_csm_threats_agent_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudWorkloadSecurityAPI.new

# there is a valid "agent_rule_rc" in the system
AGENT_RULE_DATA_ID = ENV["AGENT_RULE_DATA_ID"]

body = DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleUpdateRequest.new({
  data: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleUpdateData.new({
    attributes: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleUpdateAttributes.new({
      description: "Test Agent rule",
      enabled: true,
      expression: 'exec.file.name == "sh"',
    }),
    type: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleType::AGENT_RULE,
    id: AGENT_RULE_DATA_ID,
  }),
})
p api_instance.update_csm_threats_agent_rule(AGENT_RULE_DATA_ID, body)

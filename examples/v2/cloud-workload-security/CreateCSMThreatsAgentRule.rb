# Create a CSM Threats Agent rule returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_csm_threats_agent_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudWorkloadSecurityAPI.new

body = DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateRequest.new({
  data: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateData.new({
    attributes: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateAttributes.new({
      description: "My Agent rule",
      enabled: true,
      expression: 'exec.file.name == "sh"',
      name: "my_agent_rule",
    }),
    type: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleType::AGENT_RULE,
  }),
})
p api_instance.create_csm_threats_agent_rule(body)

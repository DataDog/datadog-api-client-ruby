# Create a Workload Protection agent rule (US1-FED) returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CSMThreatsAPI.new

body = DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateRequest.new({
  data: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateData.new({
    attributes: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateAttributes.new({
      description: "My Agent rule",
      enabled: true,
      expression: 'exec.file.name == "sh"',
      filters: [],
      name: "examplecsmthreat",
    }),
    type: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleType::AGENT_RULE,
  }),
})
p api_instance.create_cloud_workload_security_agent_rule(body)

# Create a Cloud Workload Security Agent rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudWorkloadSecurityAPI.new

body = DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateRequest.new({
  data: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateData.new({
    attributes: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateAttributes.new({
      description: "Test Agent rule",
      enabled: true,
      expression: 'exec.file.name == "sh"',
      name: "testexamplecreateacloudworkloadsecurityagentrulereturnsokresponse",
    }),
    type: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleType::AGENT_RULE,
  }),
})
p api_instance.create_cloud_workload_security_agent_rule(body)

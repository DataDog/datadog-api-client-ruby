require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::CloudWorkloadSecurityAPI.new
body = DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateRequest.new({data: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateData.new({attributes: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateAttributes.new({expression: 'exec.file.name == \"sh\"', name: 'my_agent_rule'}), type: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleType::AGENT_RULE})}) # CloudWorkloadSecurityAgentRuleCreateRequest | The definition of the new Agent rule.

begin
  # Create a Cloud Workload Security Agent rule
  result = api_instance.create_cloud_workload_security_agent_rule(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudWorkloadSecurityAPI->create_cloud_workload_security_agent_rule: #{e}"
end

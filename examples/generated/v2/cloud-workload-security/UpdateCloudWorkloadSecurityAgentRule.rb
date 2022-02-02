require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudWorkloadSecurityAPI.new
agent_rule_id = "3b5-v82-ns6" # String | The ID of the Agent rule.
body = DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleUpdateRequest.new({ data: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleUpdateData.new({ attributes: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleUpdateAttributes.new, type: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleType::AGENT_RULE }) }) # CloudWorkloadSecurityAgentRuleUpdateRequest | New definition of the Agent rule.

begin
  # Update a Cloud Workload Security Agent rule
  result = api_instance.update_cloud_workload_security_agent_rule(agent_rule_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudWorkloadSecurityAPI->update_cloud_workload_security_agent_rule: #{e}"
end

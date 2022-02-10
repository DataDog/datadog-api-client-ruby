require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::CloudWorkloadSecurityAPI.new
agent_rule_id = '3b5-v82-ns6' # String | The ID of the Agent rule.

begin
  # Delete a Cloud Workload Security Agent rule
  api_instance.delete_cloud_workload_security_agent_rule(agent_rule_id)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudWorkloadSecurityAPI->delete_cloud_workload_security_agent_rule: #{e}"
end

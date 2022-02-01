require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::CloudWorkloadSecurityAPI.new

begin
  # Get all Cloud Workload Security Agent rules
  result = api_instance.list_cloud_workload_security_agent_rules
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudWorkloadSecurityAPI->list_cloud_workload_security_agent_rules: #{e}"
end

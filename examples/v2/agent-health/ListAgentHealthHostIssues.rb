# List active Agent Health issues returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AgentHealthAPI.new
opts = {
  agent_type: AgentHealthAgentType::NODE,
}
p api_instance.list_agent_health_host_issues("123e4567-e89b-12d3-a456-426614174000", opts)

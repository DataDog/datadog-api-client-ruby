# Create a Workload Protection agent rule (US1-FED) returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::CSMThreatsAPI.new

body = DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateRequest.new({
  data: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateData.new({
    attributes: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleCreateAttributes.new({
      actions: [
        DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleAction.new({
          coredump: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleActionCoreDump.new({}),
          disabled: false,
          _hash: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleActionHash.new({}),
          kill: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleKill.new({}),
          log: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleActionLog.new({}),
          metadata: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleActionMetadata.new({}),
          network_filter: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleActionNetworkFilter.new({}),
          set: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleActionSet.new({}),
        }),
      ],
      blocking: [],
      description: "My Agent rule",
      disabled: [],
      enabled: true,
      expression: 'exec.file.name == "sh"',
      filters: [],
      monitoring: [],
      name: "my_agent_rule",
      policy_id: "a8c8e364-6556-434d-b798-a4c23de29c0b",
      product_tags: [],
      silent: false,
    }),
    type: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleType::AGENT_RULE,
  }),
})
p api_instance.create_cloud_workload_security_agent_rule(body)

# Update a Workload Protection agent rule (US1-FED) returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::CSMThreatsAPI.new

body = DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleUpdateRequest.new({
  data: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleUpdateData.new({
    attributes: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleUpdateAttributes.new({
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
      monitoring: [],
      policy_id: "a8c8e364-6556-434d-b798-a4c23de29c0b",
      product_tags: [],
      silent: false,
    }),
    id: "3dd-0uc-h1s",
    type: DatadogAPIClient::V2::CloudWorkloadSecurityAgentRuleType::AGENT_RULE,
  }),
})
p api_instance.update_cloud_workload_security_agent_rule("agent_rule_id", body)

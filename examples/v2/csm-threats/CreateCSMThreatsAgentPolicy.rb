# Create a Workload Protection policy returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CSMThreatsAPI.new

body = DatadogAPIClient::V2::CloudWorkloadSecurityAgentPolicyCreateRequest.new({
  data: DatadogAPIClient::V2::CloudWorkloadSecurityAgentPolicyCreateData.new({
    attributes: DatadogAPIClient::V2::CloudWorkloadSecurityAgentPolicyCreateAttributes.new({
      description: "My agent policy",
      enabled: true,
      host_tags_lists: [
        [
          "env:test",
        ],
      ],
      name: "examplecsmthreat",
    }),
    type: DatadogAPIClient::V2::CloudWorkloadSecurityAgentPolicyType::POLICY,
  }),
})
p api_instance.create_csm_threats_agent_policy(body)

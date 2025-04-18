# Update a CSM Threats Agent policy returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CSMThreatsAPI.new

# there is a valid "policy_rc" in the system
POLICY_DATA_ID = ENV["POLICY_DATA_ID"]

body = DatadogAPIClient::V2::CloudWorkloadSecurityAgentPolicyUpdateRequest.new({
  data: DatadogAPIClient::V2::CloudWorkloadSecurityAgentPolicyUpdateData.new({
    attributes: DatadogAPIClient::V2::CloudWorkloadSecurityAgentPolicyUpdateAttributes.new({
      description: "Updated agent policy",
      enabled: true,
      host_tags_lists: [
        [
          "env:test",
        ],
      ],
      name: "updated_agent_policy",
    }),
    id: POLICY_DATA_ID,
    type: DatadogAPIClient::V2::CloudWorkloadSecurityAgentPolicyType::POLICY,
  }),
})
p api_instance.update_csm_threats_agent_policy(POLICY_DATA_ID, body)

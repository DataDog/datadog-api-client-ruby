# Batch update CSM Threats Agent policies returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CSMThreatsAPI.new

# there is a valid "policy_rc" in the system
POLICY_DATA_ID = ENV["POLICY_DATA_ID"]

body = DatadogAPIClient::V2::CloudWorkloadSecurityAgentPolicyBatchUpdateRequest.new({
  data: DatadogAPIClient::V2::CloudWorkloadSecurityAgentPolicyBatchUpdateData.new({
    attributes: DatadogAPIClient::V2::CloudWorkloadSecurityAgentPolicyBatchUpdateAttributes.new({
      policies: [
        DatadogAPIClient::V2::CloudWorkloadSecurityAgentPolicyBatchUpdateAttributesPoliciesItems.new({
          delete: false,
          description: "Updated agent policy",
          enabled: true,
          host_tags: [
            "env:test",
          ],
          id: POLICY_DATA_ID,
          name: "updated_agent_policy",
          priority: 20,
        }),
      ],
    }),
    id: "batch_update_req",
    type: DatadogAPIClient::V2::CloudWorkloadSecurityAgentPolicyBatchUpdateDataType::POLICIES,
  }),
})
p api_instance.batch_update_csm_threats_agent_policy(body)

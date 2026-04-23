# Create an org group policy returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_org_group_policy".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OrgGroupsAPI.new

body = DatadogAPIClient::V2::OrgGroupPolicyCreateRequest.new({
  data: DatadogAPIClient::V2::OrgGroupPolicyCreateData.new({
    attributes: DatadogAPIClient::V2::OrgGroupPolicyCreateAttributes.new({
      content: {
        "value": "UTC",
      },
      enforcement_tier: DatadogAPIClient::V2::OrgGroupPolicyEnforcementTier::DEFAULT,
      policy_name: "monitor_timezone",
      policy_type: DatadogAPIClient::V2::OrgGroupPolicyPolicyType::ORG_CONFIG,
    }),
    relationships: DatadogAPIClient::V2::OrgGroupPolicyCreateRelationships.new({
      org_group: DatadogAPIClient::V2::OrgGroupRelationshipToOne.new({
        data: DatadogAPIClient::V2::OrgGroupRelationshipToOneData.new({
          id: "a1b2c3d4-e5f6-7890-abcd-ef0123456789",
          type: DatadogAPIClient::V2::OrgGroupType::ORG_GROUPS,
        }),
      }),
    }),
    type: DatadogAPIClient::V2::OrgGroupPolicyType::ORG_GROUP_POLICIES,
  }),
})
p api_instance.create_org_group_policy(body)

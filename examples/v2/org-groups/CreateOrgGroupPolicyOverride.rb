# Create an org group policy override returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_org_group_policy_override".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OrgGroupsAPI.new

body = DatadogAPIClient::V2::OrgGroupPolicyOverrideCreateRequest.new({
  data: DatadogAPIClient::V2::OrgGroupPolicyOverrideCreateData.new({
    attributes: DatadogAPIClient::V2::OrgGroupPolicyOverrideCreateAttributes.new({
      org_site: "datadoghq.com",
      org_uuid: "c3d4e5f6-a7b8-9012-cdef-012345678901",
    }),
    relationships: DatadogAPIClient::V2::OrgGroupPolicyOverrideCreateRelationships.new({
      org_group: DatadogAPIClient::V2::OrgGroupRelationshipToOne.new({
        data: DatadogAPIClient::V2::OrgGroupRelationshipToOneData.new({
          id: "a1b2c3d4-e5f6-7890-abcd-ef0123456789",
          type: DatadogAPIClient::V2::OrgGroupType::ORG_GROUPS,
        }),
      }),
      org_group_policy: DatadogAPIClient::V2::OrgGroupPolicyRelationshipToOne.new({
        data: DatadogAPIClient::V2::OrgGroupPolicyRelationshipToOneData.new({
          id: "1a2b3c4d-5e6f-7890-abcd-ef0123456789",
          type: DatadogAPIClient::V2::OrgGroupPolicyType::ORG_GROUP_POLICIES,
        }),
      }),
    }),
    type: DatadogAPIClient::V2::OrgGroupPolicyOverrideType::ORG_GROUP_POLICY_OVERRIDES,
  }),
})
p api_instance.create_org_group_policy_override(body)

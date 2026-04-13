# Update an org group membership returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_org_group_membership".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OrgGroupsAPI.new

body = DatadogAPIClient::V2::OrgGroupMembershipUpdateRequest.new({
  data: DatadogAPIClient::V2::OrgGroupMembershipUpdateData.new({
    id: "f1e2d3c4-b5a6-7890-1234-567890abcdef",
    relationships: DatadogAPIClient::V2::OrgGroupMembershipUpdateRelationships.new({
      org_group: DatadogAPIClient::V2::OrgGroupRelationshipToOne.new({
        data: DatadogAPIClient::V2::OrgGroupRelationshipToOneData.new({
          id: "a1b2c3d4-e5f6-7890-abcd-ef0123456789",
          type: DatadogAPIClient::V2::OrgGroupType::ORG_GROUPS,
        }),
      }),
    }),
    type: DatadogAPIClient::V2::OrgGroupMembershipType::ORG_GROUP_MEMBERSHIPS,
  }),
})
p api_instance.update_org_group_membership("f1e2d3c4-b5a6-7890-1234-567890abcdef", body)

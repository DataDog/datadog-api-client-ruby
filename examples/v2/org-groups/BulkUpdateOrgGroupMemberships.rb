# Bulk update org group memberships returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.bulk_update_org_group_memberships".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OrgGroupsAPI.new

body = DatadogAPIClient::V2::OrgGroupMembershipBulkUpdateRequest.new({
  data: DatadogAPIClient::V2::OrgGroupMembershipBulkUpdateData.new({
    attributes: DatadogAPIClient::V2::OrgGroupMembershipBulkUpdateAttributes.new({
      orgs: [
        DatadogAPIClient::V2::GlobalOrgIdentifier.new({
          org_site: "datadoghq.com",
          org_uuid: "c3d4e5f6-a7b8-9012-cdef-012345678901",
        }),
      ],
    }),
    relationships: DatadogAPIClient::V2::OrgGroupMembershipBulkUpdateRelationships.new({
      source_org_group: DatadogAPIClient::V2::OrgGroupRelationshipToOne.new({
        data: DatadogAPIClient::V2::OrgGroupRelationshipToOneData.new({
          id: "a1b2c3d4-e5f6-7890-abcd-ef0123456789",
          type: DatadogAPIClient::V2::OrgGroupType::ORG_GROUPS,
        }),
      }),
      target_org_group: DatadogAPIClient::V2::OrgGroupRelationshipToOne.new({
        data: DatadogAPIClient::V2::OrgGroupRelationshipToOneData.new({
          id: "a1b2c3d4-e5f6-7890-abcd-ef0123456789",
          type: DatadogAPIClient::V2::OrgGroupType::ORG_GROUPS,
        }),
      }),
    }),
    type: DatadogAPIClient::V2::OrgGroupMembershipBulkUpdateType::ORG_GROUP_MEMBERSHIP_BULK_UPDATES,
  }),
})
p api_instance.bulk_update_org_group_memberships(body)

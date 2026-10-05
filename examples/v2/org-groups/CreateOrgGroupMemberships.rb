# Create org group memberships returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_org_group_memberships".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OrgGroupsAPI.new

body = DatadogAPIClient::V2::OrgGroupMembershipCreateRequest.new({
  data: DatadogAPIClient::V2::OrgGroupMembershipCreateData.new({
    attributes: DatadogAPIClient::V2::OrgGroupMembershipCreateAttributes.new({
      orgs: [
        DatadogAPIClient::V2::GlobalOrgIdentifier.new({
          org_site: "us1",
          org_uuid: "c3d4e5f6-a7b8-9012-cdef-012345678901",
        }),
      ],
    }),
    relationships: DatadogAPIClient::V2::OrgGroupMembershipCreateRelationships.new({
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
p api_instance.create_org_group_memberships(body)

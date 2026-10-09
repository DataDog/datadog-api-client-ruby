# Bulk delete org group memberships returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.bulk_delete_org_group_memberships".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OrgGroupsAPI.new

body = DatadogAPIClient::V2::OrgGroupMembershipBulkDeleteRequest.new({
  data: [
    DatadogAPIClient::V2::OrgGroupMembershipBulkDeleteRequestData.new({
      id: "f1e2d3c4-b5a6-7890-1234-567890abcdef",
      type: DatadogAPIClient::V2::OrgGroupMembershipType::ORG_GROUP_MEMBERSHIPS,
    }),
  ],
})
api_instance.bulk_delete_org_group_memberships("a1b2c3d4-e5f6-7890-abcd-ef0123456789", body)

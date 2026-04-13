# Update an org group returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_org_group".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OrgGroupsAPI.new

body = DatadogAPIClient::V2::OrgGroupUpdateRequest.new({
  data: DatadogAPIClient::V2::OrgGroupUpdateData.new({
    attributes: DatadogAPIClient::V2::OrgGroupUpdateAttributes.new({
      name: "Updated Org Group Name",
    }),
    id: "a1b2c3d4-e5f6-7890-abcd-ef0123456789",
    type: DatadogAPIClient::V2::OrgGroupType::ORG_GROUPS,
  }),
})
p api_instance.update_org_group("a1b2c3d4-e5f6-7890-abcd-ef0123456789", body)

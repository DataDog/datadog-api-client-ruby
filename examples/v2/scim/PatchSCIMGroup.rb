# Patch SCIM group returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ScimAPI.new

body = DatadogAPIClient::V2::ExternalUserGroupPatchRequest.new({
  operations: [
    DatadogAPIClient::V2::ExternalUserGroupPatchRequestOperationsItems.new({
      op: DatadogAPIClient::V2::ExternalUserGroupPatchRequestOperationsItemsOp::REPLACE,
      path: None,
      value: {
        "displayName": "Real new group", "id": "e43536e9-33fe-43f8-90b8-d3e39a7dd6ad",
      },
    }),
    DatadogAPIClient::V2::ExternalUserGroupPatchRequestOperationsItems.new({
      op: DatadogAPIClient::V2::ExternalUserGroupPatchRequestOperationsItemsOp::REMOVE,
      path: 'members[value eq "fddf0cf2-9b60-11ef-ad4b-d6754a54a839"]',
      value: None,
    }),
  ],
  schemas: [
    "urn:ietf:params:scim:api:messages:2.0:PatchOp",
  ],
})
opts = {
  body: body,
}
p api_instance.patch_scim_group("group_id", opts)

# Create SCIM group returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ScimAPI.new

body = DatadogAPIClient::V2::ExternalUserGroup.new({
  members: [
    DatadogAPIClient::V2::ExternalUserGroupMembersItems.new({
      _ref: "https://app.datadoghq.com/api/scim/v2/Users/429ebce5-8ed3-4da9-9f1e-662f2dbc2fe6",
      type: "User",
    }),
  ],
  meta: DatadogAPIClient::V2::ExternalUserGroupMeta.new({
    resource_type: "Group",
  }),
  schemas: [
    "urn:ietf:params:scim:schemas:core:2.0:Group",
  ],
})
opts = {
  body: body,
}
p api_instance.create_scim_group(opts)

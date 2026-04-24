# Update an org group policy override returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_org_group_policy_override".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OrgGroupsAPI.new

body = DatadogAPIClient::V2::OrgGroupPolicyOverrideUpdateRequest.new({
  data: DatadogAPIClient::V2::OrgGroupPolicyOverrideUpdateData.new({
    attributes: DatadogAPIClient::V2::OrgGroupPolicyOverrideUpdateAttributes.new({
      org_site: "us1",
      org_uuid: "c3d4e5f6-a7b8-9012-cdef-012345678901",
    }),
    id: "9f8e7d6c-5b4a-3210-fedc-ba0987654321",
    type: DatadogAPIClient::V2::OrgGroupPolicyOverrideType::ORG_GROUP_POLICY_OVERRIDES,
  }),
})
p api_instance.update_org_group_policy_override("9f8e7d6c-5b4a-3210-fedc-ba0987654321", body)

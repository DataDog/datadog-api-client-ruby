# Update an org group policy returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_org_group_policy".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OrgGroupsAPI.new

body = DatadogAPIClient::V2::OrgGroupPolicyUpdateRequest.new({
  data: DatadogAPIClient::V2::OrgGroupPolicyUpdateData.new({
    attributes: DatadogAPIClient::V2::OrgGroupPolicyUpdateAttributes.new({
      content: {
        "value": "UTC",
      },
    }),
    id: "1a2b3c4d-5e6f-7890-abcd-ef0123456789",
    type: DatadogAPIClient::V2::OrgGroupPolicyType::ORG_GROUP_POLICIES,
  }),
})
p api_instance.update_org_group_policy("1a2b3c4d-5e6f-7890-abcd-ef0123456789", body)

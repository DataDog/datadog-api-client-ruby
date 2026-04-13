# Create an org group returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_org_group".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OrgGroupsAPI.new

body = DatadogAPIClient::V2::OrgGroupCreateRequest.new({
  data: DatadogAPIClient::V2::OrgGroupCreateData.new({
    attributes: DatadogAPIClient::V2::OrgGroupCreateAttributes.new({
      name: "My Org Group",
    }),
    type: DatadogAPIClient::V2::OrgGroupType::ORG_GROUPS,
  }),
})
p api_instance.create_org_group(body)

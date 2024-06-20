# Update a specific Org Config returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OrganizationsAPI.new

body = DatadogAPIClient::V2::OrgConfigWriteRequest.new({
  data: DatadogAPIClient::V2::OrgConfigWrite.new({
    attributes: DatadogAPIClient::V2::OrgConfigWriteAttributes.new({
      value: "UTC",
    }),
    type: DatadogAPIClient::V2::OrgConfigType::ORG_CONFIGS,
  }),
})
p api_instance.update_org_config("monitor_timezone", body)

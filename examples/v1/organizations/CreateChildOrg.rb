# Create a child organization returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::OrganizationsAPI.new

body = DatadogAPIClient::V1::OrganizationCreateBody.new({
  billing: DatadogAPIClient::V1::OrganizationBilling.new({
    type: "parent_billing",
  }),
  name: "New child org",
  subscription: DatadogAPIClient::V1::OrganizationSubscription.new({
    type: "pro",
  }),
})
p api_instance.create_child_org(body)

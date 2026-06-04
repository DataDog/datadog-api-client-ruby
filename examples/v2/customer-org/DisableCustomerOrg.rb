# Disable the authenticated customer organization returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.disable_customer_org".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CustomerOrgAPI.new

body = DatadogAPIClient::V2::CustomerOrgDisableRequest.new({
  data: DatadogAPIClient::V2::CustomerOrgDisableRequestData.new({
    attributes: DatadogAPIClient::V2::CustomerOrgDisableRequestAttributes.new({
      org_uuid: "abcdef01-2345-6789-abcd-ef0123456789",
    }),
    id: "1",
    type: DatadogAPIClient::V2::CustomerOrgDisableType::CUSTOMER_ORG_DISABLE,
  }),
})
p api_instance.disable_customer_org(body)

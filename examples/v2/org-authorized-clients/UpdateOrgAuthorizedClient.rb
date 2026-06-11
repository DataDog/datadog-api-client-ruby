# Update an org authorized client returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OrgAuthorizedClientsAPI.new

body = DatadogAPIClient::V2::OrgAuthorizedClientUpdateRequest.new({
  data: DatadogAPIClient::V2::OrgAuthorizedClientUpdateData.new({
    attributes: DatadogAPIClient::V2::OrgAuthorizedClientUpdateAttributes.new({
      disabled: true,
    }),
    id: "00000000-0000-0000-0000-000000000001",
    type: DatadogAPIClient::V2::OrgAuthorizedClientType::ORG_AUTHORIZED_CLIENTS,
  }),
})
p api_instance.update_org_authorized_client("00000000-0000-0000-0000-000000000001", body)

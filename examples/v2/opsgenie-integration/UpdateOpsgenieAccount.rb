# Update an Opsgenie account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OpsgenieIntegrationAPI.new

body = DatadogAPIClient::V2::OpsgenieAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::OpsgenieAccountUpdateData.new({
    attributes: DatadogAPIClient::V2::OpsgenieAccountUpdateAttributes.new({
      api_key: "00000000-0000-0000-0000-000000000000",
      region: DatadogAPIClient::V2::OpsgenieServiceRegionType::US,
    }),
    id: "596da4af-0563-4097-90ff-07230c3f9db3",
    type: DatadogAPIClient::V2::OpsgenieAccountType::OPSGENIE_ACCOUNT,
  }),
})
p api_instance.update_opsgenie_account("account_id", body)

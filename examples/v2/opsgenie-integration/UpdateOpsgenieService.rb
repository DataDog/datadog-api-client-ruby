# Update a single service object returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OpsgenieIntegrationAPI.new

body = DatadogAPIClient::V2::OpsgenieServiceUpdateRequest.new({
  data: DatadogAPIClient::V2::OpsgenieServiceUpdateData.new({
    attributes: DatadogAPIClient::V2::OpsgenieServiceUpdateAttributes.new({
      custom_url: "https://example.com",
      name: "fake-opsgenie-service-name",
      opsgenie_api_key: "00000000-0000-0000-0000-000000000000",
      region: DatadogAPIClient::V2::OpsgenieServiceRegionType::US,
    }),
    id: "596da4af-0563-4097-90ff-07230c3f9db3",
    type: DatadogAPIClient::V2::OpsgenieServiceType::OPSGENIE_SERVICE,
  }),
})
p api_instance.update_opsgenie_service("integration_service_id", body)

# Create a new service object returns "CREATED" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OpsgenieIntegrationAPI.new

body = DatadogAPIClient::V2::OpsgenieServiceCreateRequest.new({
  data: DatadogAPIClient::V2::OpsgenieServiceCreateData.new({
    attributes: DatadogAPIClient::V2::OpsgenieServiceCreateAttributes.new({
      name: "Example-Opsgenie-Integration",
      opsgenie_api_key: "00000000-0000-0000-0000-000000000000",
      region: DatadogAPIClient::V2::OpsgenieServiceRegionType::US,
    }),
    type: DatadogAPIClient::V2::OpsgenieServiceType::OPSGENIE_SERVICE,
  }),
})
p api_instance.create_opsgenie_service(body)

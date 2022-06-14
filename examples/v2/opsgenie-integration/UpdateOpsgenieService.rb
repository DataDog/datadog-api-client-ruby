# Update a single service object returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OpsgenieIntegrationAPI.new

# there is a valid "opsgenie_service" in the system
OPSGENIE_SERVICE_DATA_ATTRIBUTES_NAME = ENV["OPSGENIE_SERVICE_DATA_ATTRIBUTES_NAME"]
OPSGENIE_SERVICE_DATA_ID = ENV["OPSGENIE_SERVICE_DATA_ID"]

body = DatadogAPIClient::V2::OpsgenieServiceUpdateRequest.new({
  data: DatadogAPIClient::V2::OpsgenieServiceUpdateData.new({
    attributes: DatadogAPIClient::V2::OpsgenieServiceUpdateAttributes.new({
      name: "fake-opsgenie-service-name--updated",
      opsgenie_api_key: "00000000-0000-0000-0000-000000000000",
      region: DatadogAPIClient::V2::OpsgenieServiceRegionType::EU,
    }),
    id: OPSGENIE_SERVICE_DATA_ID,
    type: DatadogAPIClient::V2::OpsgenieServiceType::OPSGENIE_SERVICE,
  }),
})
p api_instance.update_opsgenie_service(OPSGENIE_SERVICE_DATA_ID, body)

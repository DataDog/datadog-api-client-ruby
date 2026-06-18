# Edit degradation update returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new

body = DatadogAPIClient::V2::PatchDegradationUpdateRequest.new({
  data: DatadogAPIClient::V2::PatchDegradationUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::PatchDegradationUpdateRequestDataAttributes.new({
      description: "We've identified the source of the latency increase and are deploying a fix.",
      status: DatadogAPIClient::V2::PatchDegradationUpdateRequestDataAttributesStatus::IDENTIFIED,
    }),
    id: "00000000-0000-0000-0000-000000000000",
    type: DatadogAPIClient::V2::PatchDegradationUpdateRequestDataType::DEGRADATION_UPDATES,
  }),
})
p api_instance.edit_degradation_update("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", "9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", "9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)

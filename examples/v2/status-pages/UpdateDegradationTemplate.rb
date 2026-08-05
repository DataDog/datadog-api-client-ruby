# Update degradation template returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new

body = DatadogAPIClient::V2::PatchDegradationTemplateRequest.new({
  data: DatadogAPIClient::V2::PatchDegradationTemplateRequestData.new({
    attributes: DatadogAPIClient::V2::PatchDegradationTemplateRequestDataAttributes.new({
      components_affected: [
        DatadogAPIClient::V2::PatchDegradationTemplateRequestDataAttributesComponentsAffectedItems.new({
          id: "",
          status: DatadogAPIClient::V2::PatchDegradationTemplateRequestDataAttributesComponentsAffectedItemsStatus::OPERATIONAL,
        }),
      ],
      updates: [
        DatadogAPIClient::V2::PatchDegradationTemplateRequestDataAttributesUpdatesItems.new({
          status: DatadogAPIClient::V2::CreateDegradationRequestDataAttributesStatus::INVESTIGATING,
        }),
      ],
    }),
    id: "",
    type: DatadogAPIClient::V2::PatchDegradationTemplateRequestDataType::DEGRADATION_TEMPLATES,
  }),
})
p api_instance.update_degradation_template("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", "9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)

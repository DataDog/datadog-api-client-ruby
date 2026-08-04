# Create degradation template returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new

body = DatadogAPIClient::V2::CreateDegradationTemplateRequest.new({
  data: DatadogAPIClient::V2::CreateDegradationTemplateRequestData.new({
    attributes: DatadogAPIClient::V2::CreateDegradationTemplateRequestDataAttributes.new({
      components_affected: [
        DatadogAPIClient::V2::CreateDegradationTemplateRequestDataAttributesComponentsAffectedItems.new({
          id: "",
          status: DatadogAPIClient::V2::PatchDegradationTemplateRequestDataAttributesComponentsAffectedItemsStatus::OPERATIONAL,
        }),
      ],
      name: "",
      updates: [
        DatadogAPIClient::V2::CreateDegradationTemplateRequestDataAttributesUpdatesItems.new({
          status: DatadogAPIClient::V2::CreateDegradationRequestDataAttributesStatus::INVESTIGATING,
        }),
      ],
    }),
    type: DatadogAPIClient::V2::PatchDegradationTemplateRequestDataType::DEGRADATION_TEMPLATES,
  }),
})
p api_instance.create_degradation_template("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)

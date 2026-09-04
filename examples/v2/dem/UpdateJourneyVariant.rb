# Update a DEM journey variant returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DEMAPI.new

body = DatadogAPIClient::V2::DemVariantRequest.new({
  data: DatadogAPIClient::V2::DemVariantRequestData.new({
    attributes: DatadogAPIClient::V2::DemVariantAttributes.new({
      filter: "device.type:mobile",
      name: "Mobile checkout",
      rum_steps: [
        DatadogAPIClient::V2::DemRumStep.new({
          nodes: [
            DatadogAPIClient::V2::DemRumNode.new({
              query: "action.name:'checkout'",
            }),
          ],
          type: DatadogAPIClient::V2::DemRumStepType::START,
        }),
        DatadogAPIClient::V2::DemRumStep.new({
          nodes: [
            DatadogAPIClient::V2::DemRumNode.new({
              query: "action.name:'confirmation'",
            }),
          ],
          type: DatadogAPIClient::V2::DemRumStepType::STOP,
        }),
      ],
    }),
    type: DatadogAPIClient::V2::DemVariantType::VARIANTS,
  }),
})
p api_instance.update_journey_variant("variant_id", body)

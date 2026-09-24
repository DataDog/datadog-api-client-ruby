# Create a DEM journey variant returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DEMAPI.new

body = DatadogAPIClient::V2::DemVariantRequest.new({
  data: DatadogAPIClient::V2::DemVariantRequestData.new({
    attributes: DatadogAPIClient::V2::DemVariantAttributes.new({
      filter: "@device.type:mobile",
      name: "Mobile checkout",
      rum_steps: [
        DatadogAPIClient::V2::DemRumStep.new({
          nodes: [
            DatadogAPIClient::V2::DemRumNode.new({
              app_id: "11111111-2222-3333-4444-555555555555",
              query: '@action.name:"Checkout"',
            }),
          ],
          type: DatadogAPIClient::V2::DemRumStepType::START,
        }),
        DatadogAPIClient::V2::DemRumStep.new({
          nodes: [
            DatadogAPIClient::V2::DemRumNode.new({
              app_id: "11111111-2222-3333-4444-555555555555",
              query: '@view.url_path:"/confirmation"',
            }),
          ],
          type: DatadogAPIClient::V2::DemRumStepType::STOP,
        }),
      ],
    }),
    type: DatadogAPIClient::V2::DemVariantType::VARIANTS,
  }),
})
p api_instance.create_journey_variant("journey_id", body)

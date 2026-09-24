# Create a DEM journey returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DEMAPI.new

body = DatadogAPIClient::V2::DemJourneyCreateRequest.new({
  data: DatadogAPIClient::V2::DemJourneyCreateData.new({
    attributes: DatadogAPIClient::V2::DemJourneyCreateAttributes.new({
      description: "Tracks the user checkout flow from cart to confirmation.",
      journey_rum: DatadogAPIClient::V2::DemJourneyRum.new({
        filter: "@application.id:11111111-2222-3333-4444-555555555555 env:prod",
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
        variants: [
          DatadogAPIClient::V2::DemVariant.new({
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
        ],
      }),
      name: "Checkout Flow",
      tags: [
        "team:synthetics",
        "env:prod",
      ],
      variants: [
        DatadogAPIClient::V2::DemVariant.new({
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
      ],
    }),
    type: DatadogAPIClient::V2::DemJourneyType::JOURNEYS,
  }),
})
p api_instance.create_journey(body)

# Create App returns "App Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_app".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AppsAPI.new

body = DatadogAPIClient::V2::CreateAppRequest.new({
  data: DatadogAPIClient::V2::CreateAppRequestData.new({
    attributes: DatadogAPIClient::V2::CreateAppRequestDataAttributes.new({
      components: [
        DatadogAPIClient::V2::ComponentGrid.new({
          events: [],
          name: "grid0",
          properties: DatadogAPIClient::V2::ComponentGridProperties.new({
            children: [
              DatadogAPIClient::V2::Component.new({
                events: [],
                name: "gridCell0",
                properties: DatadogAPIClient::V2::ComponentProperties.new({
                  children: [
                    DatadogAPIClient::V2::Component.new({
                      events: [],
                      name: "calloutValue0",
                      properties: DatadogAPIClient::V2::ComponentProperties.new({
                        is_visible: true,
                      }),
                      type: DatadogAPIClient::V2::ComponentType::CALLOUTVALUE,
                    }),
                  ],
                  is_visible: "true",
                }),
                type: DatadogAPIClient::V2::ComponentType::GRIDCELL,
              }),
            ],
          }),
          type: DatadogAPIClient::V2::ComponentGridType::GRID,
        }),
      ],
      description: "This is a simple example app",
      embedded_queries: [],
      name: "Example App",
      root_instance_name: "grid0",
    }),
    type: DatadogAPIClient::V2::CreateAppRequestDataType::APPDEFINITIONS,
  }),
})
p api_instance.create_app(body)

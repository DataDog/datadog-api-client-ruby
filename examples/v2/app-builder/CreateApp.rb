# Create App returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AppBuilderAPI.new

body = DatadogAPIClient::V2::CreateAppRequest.new({
  data: DatadogAPIClient::V2::CreateAppRequestData.new({
    type: DatadogAPIClient::V2::AppDefinitionType::APPDEFINITIONS,
    attributes: DatadogAPIClient::V2::CreateAppRequestDataAttributes.new({
      root_instance_name: "grid0",
      components: [
        DatadogAPIClient::V2::ComponentGrid.new({
          name: "grid0",
          type: DatadogAPIClient::V2::ComponentGridType::GRID,
          properties: DatadogAPIClient::V2::ComponentGridProperties.new({
            children: [
              DatadogAPIClient::V2::Component.new({
                type: DatadogAPIClient::V2::ComponentType::GRIDCELL,
                name: "gridCell0",
                properties: DatadogAPIClient::V2::ComponentProperties.new({
                  children: [
                    DatadogAPIClient::V2::Component.new({
                      name: "text0",
                      type: DatadogAPIClient::V2::ComponentType::TEXT,
                      properties: DatadogAPIClient::V2::ComponentProperties.new({
                        is_visible: true,
                      }),
                      events: [],
                    }),
                  ],
                  is_visible: "true",
                }),
                events: [],
              }),
              DatadogAPIClient::V2::Component.new({
                type: DatadogAPIClient::V2::ComponentType::GRIDCELL,
                name: "gridCell2",
                properties: DatadogAPIClient::V2::ComponentProperties.new({
                  children: [
                    DatadogAPIClient::V2::Component.new({
                      name: "table0",
                      type: DatadogAPIClient::V2::ComponentType::TABLE,
                      properties: DatadogAPIClient::V2::ComponentProperties.new({
                        is_visible: true,
                      }),
                      events: [],
                    }),
                  ],
                  is_visible: "true",
                }),
                events: [],
              }),
              DatadogAPIClient::V2::Component.new({
                type: DatadogAPIClient::V2::ComponentType::GRIDCELL,
                name: "gridCell1",
                properties: DatadogAPIClient::V2::ComponentProperties.new({
                  children: [
                    DatadogAPIClient::V2::Component.new({
                      name: "text1",
                      type: DatadogAPIClient::V2::ComponentType::TEXT,
                      properties: DatadogAPIClient::V2::ComponentProperties.new({
                        is_visible: true,
                      }),
                      events: [],
                    }),
                  ],
                  is_visible: "true",
                }),
                events: [],
              }),
              DatadogAPIClient::V2::Component.new({
                type: DatadogAPIClient::V2::ComponentType::GRIDCELL,
                name: "gridCell3",
                properties: DatadogAPIClient::V2::ComponentProperties.new({
                  children: [
                    DatadogAPIClient::V2::Component.new({
                      name: "button0",
                      type: DatadogAPIClient::V2::ComponentType::BUTTON,
                      properties: DatadogAPIClient::V2::ComponentProperties.new({
                        is_visible: true,
                      }),
                      events: [
                        DatadogAPIClient::V2::AppBuilderEvent.new({
                          name: DatadogAPIClient::V2::AppBuilderEventName::CLICK,
                          type: DatadogAPIClient::V2::AppBuilderEventType::SETSTATEVARIABLEVALUE,
                        }),
                      ],
                    }),
                  ],
                  is_visible: "true",
                }),
                events: [],
              }),
              DatadogAPIClient::V2::Component.new({
                type: DatadogAPIClient::V2::ComponentType::GRIDCELL,
                name: "gridCell4",
                properties: DatadogAPIClient::V2::ComponentProperties.new({
                  children: [
                    DatadogAPIClient::V2::Component.new({
                      name: "button1",
                      type: DatadogAPIClient::V2::ComponentType::BUTTON,
                      properties: DatadogAPIClient::V2::ComponentProperties.new({
                        is_visible: true,
                      }),
                      events: [
                        DatadogAPIClient::V2::AppBuilderEvent.new({
                          name: DatadogAPIClient::V2::AppBuilderEventName::CLICK,
                          type: DatadogAPIClient::V2::AppBuilderEventType::SETSTATEVARIABLEVALUE,
                        }),
                      ],
                    }),
                  ],
                  is_visible: "true",
                }),
                events: [],
              }),
            ],
            background_color: "default",
          }),
          events: [],
        }),
      ],
      queries: [
        DatadogAPIClient::V2::ActionQuery.new({
          id: "92ff0bb8-553b-4f31-87c7-ef5bd16d47d5",
          type: DatadogAPIClient::V2::ActionQueryType::ACTION,
          name: "fetchFacts",
          events: [],
          properties: DatadogAPIClient::V2::ActionQueryProperties.new({
            spec: {
              "fqn": "com.datadoghq.http.request", "connectionId": "5e63f4a8-4ce6-47de-ba11-f6617c1d54f3", "inputs": "{'verb': 'GET', 'url': 'https://catfact.ninja/facts', 'urlParams': [{'key': 'limit', 'value': '${pageSize.value.toString()}'}, {'key': 'page', 'value': '${(table0.pageIndex + 1).toString()}'}]}",
            },
          }),
        }),
        DatadogAPIClient::V2::StateVariable.new({
          type: DatadogAPIClient::V2::StateVariableType::STATEVARIABLE,
          name: "pageSize",
          properties: DatadogAPIClient::V2::StateVariableProperties.new({
            default_value: "${20}",
          }),
          id: "afd03c81-4075-4432-8618-ba09d52d2f2d",
        }),
        DatadogAPIClient::V2::DataTransform.new({
          type: DatadogAPIClient::V2::DataTransformType::DATATRANSFORM,
          name: "randomFact",
          properties: DatadogAPIClient::V2::DataTransformProperties.new({
            outputs: '${(() => {const facts = fetchFacts.outputs.body.data\nreturn facts[Math.floor(Math.random()*facts.length)]\n})()}',
          }),
          id: "0fb22859-47dc-4137-9e41-7b67d04c525c",
        }),
      ],
      name: "Example Cat Facts Viewer",
      description: "This is a slightly complicated example app that fetches and displays cat facts",
    }),
  }),
})
p api_instance.create_app(body)

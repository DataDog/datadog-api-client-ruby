# Create a new powerpack returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::PowerpackAPI.new

body = DatadogAPIClient::V2::Powerpack.new({
  data: DatadogAPIClient::V2::PowerpackData.new({
    attributes: DatadogAPIClient::V2::PowerpackAttributes.new({
      description: "Sample powerpack",
      group_widget: DatadogAPIClient::V2::PowerpackGroupWidget.new({
        definition: DatadogAPIClient::V2::PowerpackGroupWidgetDefinition.new({
          layout_type: "ordered",
          show_title: true,
          title: "Sample Powerpack",
          type: "group",
          widgets: [
            DatadogAPIClient::V2::PowerpackInnerWidgets.new({
              definition: {
                "content": "test", "type": "note",
              },
            }),
          ],
        }),
        layout: DatadogAPIClient::V2::PowerpackGroupWidgetLayout.new({
          height: 3,
          width: 12,
          x: 0,
          y: 0,
        }),
      }),
      name: "Example-Powerpack",
      tags: [
        "tag:sample",
      ],
      template_variables: [
        DatadogAPIClient::V2::PowerpackTemplateVariable.new({
          defaults: [
            "*",
          ],
          name: "sample",
        }),
      ],
    }),
    type: "powerpack",
  }),
})
p api_instance.create_powerpack(body)

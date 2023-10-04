# Create a new dashboard with powerpack widget

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

# there is a valid "powerpack" in the system
POWERPACK_DATA_ID = ENV["POWERPACK_DATA_ID"]

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard with powerpack widget",
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::PowerpackWidgetDefinition.new({
        type: DatadogAPIClient::V1::PowerpackWidgetDefinitionType::POWERPACK,
        powerpack_id: POWERPACK_DATA_ID,
        template_variables: DatadogAPIClient::V1::PowerpackTemplateVariables.new({
          controlled_externally: [],
          controlled_by_powerpack: [
            DatadogAPIClient::V1::PowerpackTemplateVariableContents.new({
              name: "foo",
              prefix: "bar",
              values: [
                "baz",
                "qux",
                "quuz",
              ],
            }),
          ],
        }),
      }),
      layout: DatadogAPIClient::V1::WidgetLayout.new({
        x: 1,
        y: 1,
        width: 2,
        height: 2,
        is_column_break: false,
      }),
    }),
  ],
  description: "description",
  is_read_only: false,
})
p api_instance.create_dashboard(body)

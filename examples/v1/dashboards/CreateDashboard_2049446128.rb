# Create a new dashboard with point_plot widget

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard",
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::PointPlotWidgetDefinition.new({
        title: "",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        type: DatadogAPIClient::V1::PointPlotWidgetDefinitionType::POINT_PLOT,
        requests: [
          DatadogAPIClient::V1::PointPlotWidgetRequest.new({
            request_type: DatadogAPIClient::V1::DataProjectionRequestType::DATA_PROJECTION,
            query: DatadogAPIClient::V1::DataProjectionQuery.new({
              query_string: "service:web-store",
              data_source: "logs",
            }),
            projection: DatadogAPIClient::V1::PointPlotProjection.new({
              type: DatadogAPIClient::V1::PointPlotProjectionType::POINT_PLOT,
              dimensions: [
                DatadogAPIClient::V1::PointPlotProjectionDimension.new({
                  column: "host",
                  dimension: DatadogAPIClient::V1::PointPlotDimension::GROUP,
                }),
                DatadogAPIClient::V1::PointPlotProjectionDimension.new({
                  column: "@duration",
                  dimension: DatadogAPIClient::V1::PointPlotDimension::Y,
                }),
              ],
            }),
          }),
        ],
      }),
    }),
  ],
})
p api_instance.create_dashboard(body)

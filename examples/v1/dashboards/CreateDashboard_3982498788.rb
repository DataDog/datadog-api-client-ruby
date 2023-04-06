# Create a new dashboard with timeseries widget containing style attributes

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
  title: "Example-Dashboard with timeseries widget",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::TimeseriesWidgetDefinition.new({
        type: DatadogAPIClient::V1::TimeseriesWidgetDefinitionType::TIMESERIES,
        requests: [
          DatadogAPIClient::V1::TimeseriesWidgetRequest.new({
            q: "sum:trace.test.errors{env:prod,service:datadog-api-spec} by {resource_name}.as_count()",
            on_right_yaxis: false,
            style: DatadogAPIClient::V1::WidgetRequestStyle.new({
              palette: "warm",
              line_type: DatadogAPIClient::V1::WidgetLineType::SOLID,
              line_width: DatadogAPIClient::V1::WidgetLineWidth::NORMAL,
            }),
            display_type: DatadogAPIClient::V1::WidgetDisplayType::BARS,
          }),
        ],
      }),
    }),
  ],
})
p api_instance.create_dashboard(body)

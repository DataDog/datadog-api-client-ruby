# Create a new dashboard with a timeseries widget and an overlay request

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
  title: "Example-Dashboard",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::TimeseriesWidgetDefinition.new({
        type: DatadogAPIClient::V1::TimeseriesWidgetDefinitionType::TIMESERIES,
        requests: [
          DatadogAPIClient::V1::TimeseriesWidgetRequest.new({
            on_right_yaxis: false,
            queries: [
              DatadogAPIClient::V1::FormulaAndFunctionMetricQueryDefinition.new({
                data_source: DatadogAPIClient::V1::FormulaAndFunctionMetricDataSource::METRICS,
                name: "mymetric",
                query: "avg:system.cpu.user{*}",
              }),
            ],
            response_format: DatadogAPIClient::V1::FormulaAndFunctionResponseFormat::TIMESERIES,
            display_type: DatadogAPIClient::V1::WidgetDisplayType::LINE,
          }),
          DatadogAPIClient::V1::TimeseriesWidgetRequest.new({
            response_format: DatadogAPIClient::V1::FormulaAndFunctionResponseFormat::TIMESERIES,
            queries: [
              DatadogAPIClient::V1::FormulaAndFunctionMetricQueryDefinition.new({
                data_source: DatadogAPIClient::V1::FormulaAndFunctionMetricDataSource::METRICS,
                name: "mymetricoverlay",
                query: "avg:system.cpu.user{*}",
              }),
            ],
            style: DatadogAPIClient::V1::WidgetRequestStyle.new({
              palette: "purple",
              line_type: DatadogAPIClient::V1::WidgetLineType::SOLID,
              line_width: DatadogAPIClient::V1::WidgetLineWidth::NORMAL,
            }),
            display_type: DatadogAPIClient::V1::WidgetDisplayType::OVERLAY,
          }),
        ],
      }),
    }),
  ],
})
p api_instance.create_dashboard(body)

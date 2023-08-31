# Create a new dashboard with sunburst widget and metrics data

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::SunburstWidgetDefinition.new({
        title: "",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        type: DatadogAPIClient::V1::SunburstWidgetDefinitionType::SUNBURST,
        requests: [
          DatadogAPIClient::V1::SunburstWidgetRequest.new({
            response_format: DatadogAPIClient::V1::FormulaAndFunctionResponseFormat::SCALAR,
            formulas: [
              DatadogAPIClient::V1::WidgetFormula.new({
                formula: "query1",
              }),
            ],
            queries: [
              DatadogAPIClient::V1::FormulaAndFunctionMetricQueryDefinition.new({
                query: "sum:system.mem.used{*} by {service}",
                data_source: DatadogAPIClient::V1::FormulaAndFunctionMetricDataSource::METRICS,
                name: "query1",
                aggregator: DatadogAPIClient::V1::FormulaAndFunctionMetricAggregation::SUM,
              }),
            ],
            style: DatadogAPIClient::V1::WidgetStyle.new({
              palette: "dog_classic",
            }),
          }),
        ],
      }),
      layout: DatadogAPIClient::V1::WidgetLayout.new({
        x: 0,
        y: 0,
        width: 4,
        height: 4,
      }),
    }),
  ],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
})
p api_instance.create_dashboard(body)

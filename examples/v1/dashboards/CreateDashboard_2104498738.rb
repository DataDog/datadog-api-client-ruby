# Create a new dashboard with formulas and functions scatterplot widget

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      id: 5346764334358972,
      definition: DatadogAPIClient::V1::ScatterPlotWidgetDefinition.new({
        title: "",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        type: DatadogAPIClient::V1::ScatterPlotWidgetDefinitionType::SCATTERPLOT,
        requests: DatadogAPIClient::V1::ScatterPlotWidgetDefinitionRequests.new({
          table: DatadogAPIClient::V1::ScatterplotTableRequest.new({
            formulas: [
              DatadogAPIClient::V1::ScatterplotWidgetFormula.new({
                formula: "query1",
                dimension: DatadogAPIClient::V1::ScatterplotDimension::X,
                _alias: "my-query1",
              }),
              DatadogAPIClient::V1::ScatterplotWidgetFormula.new({
                formula: "query2",
                dimension: DatadogAPIClient::V1::ScatterplotDimension::Y,
                _alias: "my-query2",
              }),
            ],
            queries: [
              DatadogAPIClient::V1::FormulaAndFunctionMetricQueryDefinition.new({
                data_source: DatadogAPIClient::V1::FormulaAndFunctionMetricDataSource::METRICS,
                name: "query1",
                query: "avg:system.cpu.user{*} by {service}",
                aggregator: DatadogAPIClient::V1::FormulaAndFunctionMetricAggregation::AVG,
              }),
              DatadogAPIClient::V1::FormulaAndFunctionMetricQueryDefinition.new({
                data_source: DatadogAPIClient::V1::FormulaAndFunctionMetricDataSource::METRICS,
                name: "query2",
                query: "avg:system.mem.used{*} by {service}",
                aggregator: DatadogAPIClient::V1::FormulaAndFunctionMetricAggregation::AVG,
              }),
            ],
            response_format: DatadogAPIClient::V1::FormulaAndFunctionResponseFormat::SCALAR,
          }),
        }),
      }),
      layout: DatadogAPIClient::V1::WidgetLayout.new({
        x: 0,
        y: 0,
        width: 4,
        height: 2,
      }),
    }),
  ],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
})
p api_instance.create_dashboard(body)

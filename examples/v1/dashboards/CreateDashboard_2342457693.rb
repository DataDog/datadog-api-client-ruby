# Create a new dashboard with scatterplot widget

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard",
  description: "",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      layout: DatadogAPIClient::V1::WidgetLayout.new({
        x: 0,
        y: 0,
        width: 47,
        height: 15,
      }),
      definition: DatadogAPIClient::V1::ScatterPlotWidgetDefinition.new({
        title: "",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        time: DatadogAPIClient::V1::WidgetTime.new({}),
        type: DatadogAPIClient::V1::ScatterPlotWidgetDefinitionType::SCATTERPLOT,
        requests: DatadogAPIClient::V1::ScatterPlotWidgetDefinitionRequests.new({
          table: DatadogAPIClient::V1::ScatterplotTableRequest.new({
            formulas: [
              DatadogAPIClient::V1::ScatterplotWidgetFormula.new({
                formula: "query1",
                dimension: DatadogAPIClient::V1::ScatterplotDimension::X,
                _alias: "",
              }),
              DatadogAPIClient::V1::ScatterplotWidgetFormula.new({
                formula: "query2",
                dimension: DatadogAPIClient::V1::ScatterplotDimension::Y,
                _alias: "",
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
        xaxis: DatadogAPIClient::V1::WidgetAxis.new({
          scale: "linear",
          include_zero: true,
          min: "auto",
          max: "auto",
        }),
        yaxis: DatadogAPIClient::V1::WidgetAxis.new({
          scale: "linear",
          include_zero: true,
          min: "auto",
          max: "auto",
        }),
        color_by_groups: [],
      }),
    }),
  ],
  template_variables: [],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::FREE,
  is_read_only: false,
  notify_list: [],
})
p api_instance.create_dashboard(body)

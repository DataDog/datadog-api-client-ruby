# Create a new dashboard with a query value widget using the percentile aggregator

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
  title: "Example-Dashboard with QVW Percentile Aggregator",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::QueryValueWidgetDefinition.new({
        title_size: "16",
        title: "",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        precision: 2,
        time: DatadogAPIClient::V1::WidgetTime.new({}),
        autoscale: true,
        requests: [
          DatadogAPIClient::V1::QueryValueWidgetRequest.new({
            formulas: [
              DatadogAPIClient::V1::WidgetFormula.new({
                formula: "query1",
              }),
            ],
            response_format: DatadogAPIClient::V1::FormulaAndFunctionResponseFormat::SCALAR,
            queries: [
              DatadogAPIClient::V1::FormulaAndFunctionMetricQueryDefinition.new({
                query: "p90:dist.dd.dogweb.latency{*}",
                data_source: DatadogAPIClient::V1::FormulaAndFunctionMetricDataSource::METRICS,
                name: "query1",
                aggregator: DatadogAPIClient::V1::FormulaAndFunctionMetricAggregation::PERCENTILE,
              }),
            ],
          }),
        ],
        type: DatadogAPIClient::V1::QueryValueWidgetDefinitionType::QUERY_VALUE,
      }),
      layout: DatadogAPIClient::V1::WidgetLayout.new({
        y: 0,
        x: 0,
        height: 2,
        width: 2,
      }),
    }),
  ],
})
p api_instance.create_dashboard(body)

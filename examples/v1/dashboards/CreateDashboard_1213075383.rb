# Create a new dashboard with toplist widget

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
      definition: DatadogAPIClient::V1::ToplistWidgetDefinition.new({
        title: "",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        time: DatadogAPIClient::V1::WidgetTime.new({}),
        type: DatadogAPIClient::V1::ToplistWidgetDefinitionType::TOPLIST,
        requests: [
          DatadogAPIClient::V1::ToplistWidgetRequest.new({
            queries: [
              DatadogAPIClient::V1::FormulaAndFunctionMetricQueryDefinition.new({
                data_source: DatadogAPIClient::V1::FormulaAndFunctionMetricDataSource::METRICS,
                name: "query1",
                query: "avg:system.cpu.user{*} by {service}",
                aggregator: DatadogAPIClient::V1::FormulaAndFunctionMetricAggregation::AVG,
              }),
            ],
            formulas: [
              DatadogAPIClient::V1::WidgetFormula.new({
                formula: "query1",
                limit: DatadogAPIClient::V1::WidgetFormulaLimit.new({
                  count: 10,
                  order: DatadogAPIClient::V1::QuerySortOrder::DESC,
                }),
              }),
            ],
            response_format: DatadogAPIClient::V1::FormulaAndFunctionResponseFormat::SCALAR,
          }),
        ],
      }),
    }),
  ],
  template_variables: [],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::FREE,
  is_read_only: false,
  notify_list: [],
})
p api_instance.create_dashboard(body)

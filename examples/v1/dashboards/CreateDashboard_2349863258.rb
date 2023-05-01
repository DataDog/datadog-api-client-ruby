# Create a new dashboard with query_value widget

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
      definition: DatadogAPIClient::V1::QueryValueWidgetDefinition.new({
        title: "",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        time: DatadogAPIClient::V1::WidgetTime.new({}),
        type: DatadogAPIClient::V1::QueryValueWidgetDefinitionType::QUERY_VALUE,
        requests: [
          DatadogAPIClient::V1::QueryValueWidgetRequest.new({
            response_format: DatadogAPIClient::V1::FormulaAndFunctionResponseFormat::SCALAR,
            queries: [
              DatadogAPIClient::V1::FormulaAndFunctionMetricQueryDefinition.new({
                name: "query1",
                data_source: DatadogAPIClient::V1::FormulaAndFunctionMetricDataSource::METRICS,
                query: "avg:system.cpu.user{*}",
                aggregator: DatadogAPIClient::V1::FormulaAndFunctionMetricAggregation::AVG,
              }),
            ],
          }),
        ],
        autoscale: true,
        precision: 2,
      }),
    }),
  ],
  template_variables: [],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::FREE,
  is_read_only: false,
  notify_list: [],
})
p api_instance.create_dashboard(body)

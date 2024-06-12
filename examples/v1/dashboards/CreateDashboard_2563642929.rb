# Create a new dashboard with a toplist widget sorted by group

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
        style: DatadogAPIClient::V1::ToplistWidgetStyle.new({
          display: DatadogAPIClient::V1::ToplistWidgetStacked.new({
            type: DatadogAPIClient::V1::ToplistWidgetStackedType::STACKED,
            legend: DatadogAPIClient::V1::ToplistWidgetLegend::INLINE,
          }),
          scaling: DatadogAPIClient::V1::ToplistWidgetScaling::RELATIVE,
        }),
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
              }),
            ],
            sort: DatadogAPIClient::V1::WidgetSortBy.new({
              count: 10,
              order_by: [
                DatadogAPIClient::V1::WidgetGroupSort.new({
                  type: DatadogAPIClient::V1::GroupType::GROUP,
                  name: "service",
                  order: DatadogAPIClient::V1::WidgetSort::ASCENDING,
                }),
              ],
            }),
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

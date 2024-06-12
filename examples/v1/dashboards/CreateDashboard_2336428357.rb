# Create a new dashboard with query_table widget

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
        width: 54,
        height: 32,
      }),
      definition: DatadogAPIClient::V1::TableWidgetDefinition.new({
        title: "",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        time: DatadogAPIClient::V1::WidgetTime.new({}),
        type: DatadogAPIClient::V1::TableWidgetDefinitionType::QUERY_TABLE,
        requests: [
          DatadogAPIClient::V1::TableWidgetRequest.new({
            queries: [
              DatadogAPIClient::V1::FormulaAndFunctionMetricQueryDefinition.new({
                data_source: DatadogAPIClient::V1::FormulaAndFunctionMetricDataSource::METRICS,
                name: "query1",
                query: "avg:system.cpu.user{*} by {host}",
                aggregator: DatadogAPIClient::V1::FormulaAndFunctionMetricAggregation::AVG,
              }),
            ],
            formulas: [
              DatadogAPIClient::V1::WidgetFormula.new({
                formula: "query1",
                conditional_formats: [],
                cell_display_mode: DatadogAPIClient::V1::TableWidgetCellDisplayMode::BAR,
              }),
            ],
            sort: DatadogAPIClient::V1::WidgetSortBy.new({
              count: 500,
              order_by: [
                DatadogAPIClient::V1::WidgetFormulaSort.new({
                  type: DatadogAPIClient::V1::FormulaType::FORMULA,
                  index: 0,
                  order: DatadogAPIClient::V1::WidgetSort::DESCENDING,
                }),
              ],
            }),
            response_format: DatadogAPIClient::V1::FormulaAndFunctionResponseFormat::SCALAR,
          }),
        ],
        has_search_bar: DatadogAPIClient::V1::TableWidgetHasSearchBar::AUTO,
      }),
    }),
  ],
  template_variables: [],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::FREE,
  is_read_only: false,
  notify_list: [],
})
p api_instance.create_dashboard(body)

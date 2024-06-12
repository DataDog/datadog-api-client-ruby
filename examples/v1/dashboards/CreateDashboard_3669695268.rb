# Create a new dashboard with logs query table widget and storage parameter

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
  title: "Example-Dashboard with query table widget and storage parameter",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::TableWidgetDefinition.new({
        type: DatadogAPIClient::V1::TableWidgetDefinitionType::QUERY_TABLE,
        requests: [
          DatadogAPIClient::V1::TableWidgetRequest.new({
            queries: [
              DatadogAPIClient::V1::FormulaAndFunctionEventQueryDefinition.new({
                data_source: DatadogAPIClient::V1::FormulaAndFunctionEventsDataSource::LOGS,
                name: "query1",
                search: DatadogAPIClient::V1::FormulaAndFunctionEventQueryDefinitionSearch.new({
                  query: "",
                }),
                indexes: [
                  "*",
                ],
                compute: DatadogAPIClient::V1::FormulaAndFunctionEventQueryDefinitionCompute.new({
                  aggregation: DatadogAPIClient::V1::FormulaAndFunctionEventAggregation::COUNT,
                }),
                group_by: [],
                storage: "online_archives",
              }),
            ],
            formulas: [
              DatadogAPIClient::V1::WidgetFormula.new({
                conditional_formats: [],
                cell_display_mode: DatadogAPIClient::V1::TableWidgetCellDisplayMode::BAR,
                formula: "query1",
              }),
            ],
            sort: DatadogAPIClient::V1::WidgetSortBy.new({
              count: 50,
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
      }),
    }),
  ],
})
p api_instance.create_dashboard(body)

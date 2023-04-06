# Create a new dashboard with a formulas and functions change widget

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::ChangeWidgetDefinition.new({
        title: "",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        time: DatadogAPIClient::V1::WidgetTime.new({}),
        type: DatadogAPIClient::V1::ChangeWidgetDefinitionType::CHANGE,
        requests: [
          DatadogAPIClient::V1::ChangeWidgetRequest.new({
            formulas: [
              DatadogAPIClient::V1::WidgetFormula.new({
                formula: "hour_before(query1)",
              }),
              DatadogAPIClient::V1::WidgetFormula.new({
                formula: "query1",
              }),
            ],
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
              }),
            ],
            response_format: DatadogAPIClient::V1::FormulaAndFunctionResponseFormat::SCALAR,
            compare_to: DatadogAPIClient::V1::WidgetCompareTo::HOUR_BEFORE,
            increase_good: true,
            order_by: DatadogAPIClient::V1::WidgetOrderBy::CHANGE,
            change_type: DatadogAPIClient::V1::WidgetChangeType::ABSOLUTE,
            order_dir: DatadogAPIClient::V1::WidgetSort::DESCENDING,
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

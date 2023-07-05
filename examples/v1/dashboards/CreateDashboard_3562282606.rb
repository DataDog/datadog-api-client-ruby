# Create a new dashboard with a change widget using formulas and functions slo query

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

# there is a valid "slo" in the system
SLO_DATA_0_ID = ENV["SLO_DATA_0_ID"]

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
              DatadogAPIClient::V1::FormulaAndFunctionSLOQueryDefinition.new({
                name: "query1",
                data_source: DatadogAPIClient::V1::FormulaAndFunctionSLODataSource::SLO,
                slo_id: SLO_DATA_0_ID,
                measure: DatadogAPIClient::V1::FormulaAndFunctionSLOMeasure::SLO_STATUS,
                group_mode: DatadogAPIClient::V1::FormulaAndFunctionSLOGroupMode::OVERALL,
                slo_query_type: DatadogAPIClient::V1::FormulaAndFunctionSLOQueryType::METRIC,
                additional_query_filters: "*",
              }),
            ],
            response_format: DatadogAPIClient::V1::FormulaAndFunctionResponseFormat::SCALAR,
            order_by: DatadogAPIClient::V1::WidgetOrderBy::CHANGE,
            change_type: DatadogAPIClient::V1::WidgetChangeType::ABSOLUTE,
            increase_good: true,
            order_dir: DatadogAPIClient::V1::WidgetSort::ASCENDING,
          }),
        ],
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

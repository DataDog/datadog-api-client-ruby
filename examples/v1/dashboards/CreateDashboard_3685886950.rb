# Create a new dashboard with a timeseries widget using formulas and functions metrics query with native semantic_mode

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
  title: "Example-Dashboard with native semantic_mode",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::TimeseriesWidgetDefinition.new({
        type: DatadogAPIClient::V1::TimeseriesWidgetDefinitionType::TIMESERIES,
        requests: [
          DatadogAPIClient::V1::TimeseriesWidgetRequest.new({
            queries: [
              DatadogAPIClient::V1::FormulaAndFunctionMetricQueryDefinition.new({
                data_source: DatadogAPIClient::V1::FormulaAndFunctionMetricDataSource::METRICS,
                name: "query1",
                query: "avg:system.cpu.user{*}",
                semantic_mode: DatadogAPIClient::V1::FormulaAndFunctionMetricSemanticMode::NATIVE,
              }),
            ],
            response_format: DatadogAPIClient::V1::FormulaAndFunctionResponseFormat::TIMESERIES,
            formulas: [
              DatadogAPIClient::V1::WidgetFormula.new({
                formula: "query1",
              }),
            ],
            display_type: DatadogAPIClient::V1::WidgetDisplayType::LINE,
          }),
        ],
      }),
    }),
  ],
})
p api_instance.create_dashboard(body)

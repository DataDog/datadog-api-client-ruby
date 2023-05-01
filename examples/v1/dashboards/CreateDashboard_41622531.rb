# Create a new dashboard with timeseries widget and formula style attributes

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard with formula style",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::TimeseriesWidgetDefinition.new({
        title: "styled timeseries",
        show_legend: true,
        legend_layout: DatadogAPIClient::V1::TimeseriesWidgetLegendLayout::AUTO,
        legend_columns: [
          DatadogAPIClient::V1::TimeseriesWidgetLegendColumn::AVG,
          DatadogAPIClient::V1::TimeseriesWidgetLegendColumn::MIN,
          DatadogAPIClient::V1::TimeseriesWidgetLegendColumn::MAX,
          DatadogAPIClient::V1::TimeseriesWidgetLegendColumn::VALUE,
          DatadogAPIClient::V1::TimeseriesWidgetLegendColumn::SUM,
        ],
        time: DatadogAPIClient::V1::WidgetTime.new({}),
        type: DatadogAPIClient::V1::TimeseriesWidgetDefinitionType::TIMESERIES,
        requests: [
          DatadogAPIClient::V1::TimeseriesWidgetRequest.new({
            formulas: [
              DatadogAPIClient::V1::WidgetFormula.new({
                formula: "query1",
                style: DatadogAPIClient::V1::WidgetFormulaStyle.new({
                  palette_index: 4,
                  palette: "classic",
                }),
              }),
            ],
            queries: [
              DatadogAPIClient::V1::FormulaAndFunctionMetricQueryDefinition.new({
                query: "avg:system.cpu.user{*}",
                data_source: DatadogAPIClient::V1::FormulaAndFunctionMetricDataSource::METRICS,
                name: "query1",
              }),
            ],
            response_format: DatadogAPIClient::V1::FormulaAndFunctionResponseFormat::TIMESERIES,
            style: DatadogAPIClient::V1::WidgetRequestStyle.new({
              palette: "dog_classic",
              line_type: DatadogAPIClient::V1::WidgetLineType::SOLID,
              line_width: DatadogAPIClient::V1::WidgetLineWidth::NORMAL,
            }),
            display_type: DatadogAPIClient::V1::WidgetDisplayType::LINE,
          }),
        ],
      }),
    }),
  ],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
  reflow_type: DatadogAPIClient::V1::DashboardReflowType::AUTO,
})
p api_instance.create_dashboard(body)

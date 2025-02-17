# Create a new dashboard with timeseries widget with custom_unit

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard",
  description: "",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::TimeseriesWidgetDefinition.new({
        title: "",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        show_legend: true,
        legend_layout: DatadogAPIClient::V1::TimeseriesWidgetLegendLayout::AUTO,
        time: DatadogAPIClient::V1::WidgetLegacyLiveSpan.new({}),
        type: DatadogAPIClient::V1::TimeseriesWidgetDefinitionType::TIMESERIES,
        requests: [
          DatadogAPIClient::V1::TimeseriesWidgetRequest.new({
            formulas: [
              DatadogAPIClient::V1::WidgetFormula.new({
                formula: "query1",
                number_format: DatadogAPIClient::V1::WidgetNumberFormat.new({
                  unit_scale: DatadogAPIClient::V1::NumberFormatUnitScale.new({
                    type: DatadogAPIClient::V1::NumberFormatUnitScaleType::CANONICAL_UNIT,
                    unit_name: "apdex",
                  }),
                  unit: DatadogAPIClient::V1::NumberFormatUnitCanonical.new({
                    type: DatadogAPIClient::V1::NumberFormatUnitScaleType::CANONICAL_UNIT,
                    unit_name: "fraction",
                  }),
                }),
              }),
            ],
            queries: [
              DatadogAPIClient::V1::FormulaAndFunctionMetricQueryDefinition.new({
                data_source: DatadogAPIClient::V1::FormulaAndFunctionMetricDataSource::METRICS,
                name: "query1",
                query: "avg:system.cpu.user{*}",
              }),
            ],
            response_format: DatadogAPIClient::V1::FormulaAndFunctionResponseFormat::TIMESERIES,
            display_type: DatadogAPIClient::V1::WidgetDisplayType::LINE,
          }),
        ],
      }),
      layout: DatadogAPIClient::V1::WidgetLayout.new({
        x: 0,
        y: 0,
        width: 12,
        height: 5,
      }),
    }),
  ],
  template_variables: [],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
  notify_list: [],
  reflow_type: DatadogAPIClient::V1::DashboardReflowType::FIXED,
})
p api_instance.create_dashboard(body)

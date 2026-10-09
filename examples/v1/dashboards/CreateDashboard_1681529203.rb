# Create a heatgrid widget with custom gradient colors for both themes

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard",
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::HeatgridWidgetDefinition.new({
        type: DatadogAPIClient::V1::HeatgridWidgetDefinitionType::HEATGRID,
        requests: [
          DatadogAPIClient::V1::HeatgridWidgetRequest.new({
            response_format: DatadogAPIClient::V1::HeatgridWidgetResponseFormat::TIMESERIES,
            queries: [
              DatadogAPIClient::V1::FormulaAndFunctionMetricQueryDefinition.new({
                data_source: DatadogAPIClient::V1::FormulaAndFunctionMetricDataSource::METRICS,
                name: "query1",
                query: "avg:system.cpu.user{*} by {host}",
              }),
            ],
            formulas: [
              DatadogAPIClient::V1::HeatgridWidgetFormula.new({
                formula: "query1",
              }),
            ],
          }),
        ],
        sort: DatadogAPIClient::V1::HeatgridSort.new({
          nesting_display: DatadogAPIClient::V1::HeatgridNestingDisplay::FLAT,
          sort_by: DatadogAPIClient::V1::HeatgridSortByValue.new({
            property: DatadogAPIClient::V1::HeatgridSortByValueProperty::VALUE,
            order: DatadogAPIClient::V1::HeatgridSortOrder::DESC,
            aggregation: DatadogAPIClient::V1::HeatgridSortAggregation::AVG,
          }),
        }),
        color: DatadogAPIClient::V1::HeatgridGradientCustomColor.new({
          mode: DatadogAPIClient::V1::HeatgridGradientMode::GRADIENT,
          source: DatadogAPIClient::V1::HeatgridCustomColorSource::CUSTOM,
          stops: [
            DatadogAPIClient::V1::HeatgridColorStop.new({
              position: 0,
              color: [
                "#FFFFFF",
                "#000000",
              ],
            }),
            DatadogAPIClient::V1::HeatgridColorStop.new({
              position: 100,
              color: "#FF0000",
            }),
          ],
        }),
        legend: DatadogAPIClient::V1::HeatgridLegend.new({
          show_caption: true,
        }),
        label_column: DatadogAPIClient::V1::HeatgridLabelColumn.new({
          width: DatadogAPIClient::V1::HeatgridLabelColumnWidth::M,
        }),
      }),
    }),
  ],
})
p api_instance.create_dashboard(body)

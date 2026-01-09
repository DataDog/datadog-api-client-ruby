# Create a new dashboard with heatmap widget with markers and num_buckets

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::HeatMapWidgetDefinition.new({
        title: "",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        type: DatadogAPIClient::V1::HeatMapWidgetDefinitionType::HEATMAP,
        xaxis: DatadogAPIClient::V1::HeatMapWidgetXAxis.new({
          num_buckets: 75,
        }),
        yaxis: DatadogAPIClient::V1::WidgetAxis.new({
          scale: "linear",
          min: "auto",
          max: "auto",
          include_zero: true,
        }),
        markers: [
          DatadogAPIClient::V1::WidgetMarker.new({
            display_type: "percentile",
            value: "50",
          }),
          DatadogAPIClient::V1::WidgetMarker.new({
            display_type: "percentile",
            value: "99",
          }),
        ],
        requests: [
          DatadogAPIClient::V1::HeatMapWidgetRequest.new({
            request_type: DatadogAPIClient::V1::WidgetHistogramRequestType::HISTOGRAM,
            query: DatadogAPIClient::V1::FormulaAndFunctionMetricQueryDefinition.new({
              data_source: DatadogAPIClient::V1::FormulaAndFunctionMetricDataSource::METRICS,
              name: "query1",
              query: "histogram:trace.servlet.request{*}",
            }),
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

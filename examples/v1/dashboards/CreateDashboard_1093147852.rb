# Create a new dashboard with distribution widget with markers and num_buckets

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::DistributionWidgetDefinition.new({
        title: "",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        type: DatadogAPIClient::V1::DistributionWidgetDefinitionType::DISTRIBUTION,
        xaxis: DatadogAPIClient::V1::DistributionWidgetXAxis.new({
          scale: "linear",
          min: "auto",
          max: "auto",
          include_zero: true,
          num_buckets: 55,
        }),
        yaxis: DatadogAPIClient::V1::DistributionWidgetYAxis.new({
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
          DatadogAPIClient::V1::WidgetMarker.new({
            display_type: "percentile",
            value: "90",
          }),
        ],
        requests: [
          DatadogAPIClient::V1::DistributionWidgetRequest.new({
            response_format: DatadogAPIClient::V1::FormulaAndFunctionResponseFormat::SCALAR,
            queries: [
              DatadogAPIClient::V1::FormulaAndFunctionMetricQueryDefinition.new({
                data_source: DatadogAPIClient::V1::FormulaAndFunctionMetricDataSource::METRICS,
                name: "query1",
                query: "avg:system.cpu.user{*} by {service}",
                aggregator: DatadogAPIClient::V1::FormulaAndFunctionMetricAggregation::AVG,
              }),
            ],
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

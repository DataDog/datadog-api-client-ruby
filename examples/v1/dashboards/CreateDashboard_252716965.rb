# Create a distribution widget using a histogram request containing a formulas and functions metrics query

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::DistributionWidgetDefinition.new({
        title: "Metrics HOP",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        show_legend: false,
        type: DatadogAPIClient::V1::DistributionWidgetDefinitionType::DISTRIBUTION,
        custom_links: [
          DatadogAPIClient::V1::WidgetCustomLink.new({
            label: "Example",
            link: "https://example.org/",
          }),
        ],
        xaxis: DatadogAPIClient::V1::DistributionWidgetXAxis.new({
          max: "auto",
          include_zero: true,
          scale: "linear",
          min: "auto",
        }),
        yaxis: DatadogAPIClient::V1::DistributionWidgetYAxis.new({
          max: "auto",
          include_zero: true,
          scale: "linear",
          min: "auto",
        }),
        requests: [
          DatadogAPIClient::V1::DistributionWidgetRequest.new({
            query: DatadogAPIClient::V1::FormulaAndFunctionMetricQueryDefinition.new({
              query: "histogram:trace.Load{*}",
              data_source: DatadogAPIClient::V1::FormulaAndFunctionMetricDataSource::METRICS,
              name: "query1",
            }),
            request_type: DatadogAPIClient::V1::DistributionWidgetHistogramRequestType::HISTOGRAM,
            style: DatadogAPIClient::V1::WidgetStyle.new({
              palette: "dog_classic",
            }),
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

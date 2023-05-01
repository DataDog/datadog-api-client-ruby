# Create a distribution widget using a histogram request containing a formulas and functions events query

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard",
  description: "Example-Dashboard",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::DistributionWidgetDefinition.new({
        title: "Events Platform - Request latency HOP",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        show_legend: false,
        type: DatadogAPIClient::V1::DistributionWidgetDefinitionType::DISTRIBUTION,
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
            query: DatadogAPIClient::V1::FormulaAndFunctionEventQueryDefinition.new({
              search: DatadogAPIClient::V1::FormulaAndFunctionEventQueryDefinitionSearch.new({
                query: "",
              }),
              data_source: DatadogAPIClient::V1::FormulaAndFunctionEventsDataSource::EVENTS,
              compute: DatadogAPIClient::V1::FormulaAndFunctionEventQueryDefinitionCompute.new({
                metric: "@duration",
                aggregation: DatadogAPIClient::V1::FormulaAndFunctionEventAggregation::MIN,
              }),
              name: "query1",
              indexes: [
                "*",
              ],
              group_by: [],
            }),
            request_type: DatadogAPIClient::V1::DistributionWidgetHistogramRequestType::HISTOGRAM,
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

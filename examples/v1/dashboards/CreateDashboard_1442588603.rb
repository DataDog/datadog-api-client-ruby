# Create a distribution widget using a histogram request containing a formulas and functions APM Stats query

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard",
  description: "",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::DistributionWidgetDefinition.new({
        title: "APM Stats - Request latency HOP",
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
            query: DatadogAPIClient::V1::FormulaAndFunctionApmResourceStatsQueryDefinition.new({
              primary_tag_value: "*",
              stat: DatadogAPIClient::V1::FormulaAndFunctionApmResourceStatName::LATENCY_DISTRIBUTION,
              data_source: DatadogAPIClient::V1::FormulaAndFunctionApmResourceStatsDataSource::APM_RESOURCE_STATS,
              name: "query1",
              service: "azure-bill-import",
              group_by: [
                "resource_name",
              ],
              env: "staging",
              primary_tag_name: "datacenter",
              operation_name: "universal.http.client",
            }),
            request_type: DatadogAPIClient::V1::DistributionWidgetHistogramRequestType::HISTOGRAM,
            style: DatadogAPIClient::V1::WidgetStyle.new({
              palette: "dog_classic",
            }),
          }),
        ],
      }),
      layout: DatadogAPIClient::V1::WidgetLayout.new({
        x: 8,
        y: 0,
        width: 4,
        height: 2,
      }),
    }),
  ],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
})
p api_instance.create_dashboard(body)

# Create a new dashboard with split graph widget from distribution widget

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard",
  description: "",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      layout: DatadogAPIClient::V1::WidgetLayout.new({
        x: 0,
        y: 0,
        width: 12,
        height: 8,
      }),
      definition: DatadogAPIClient::V1::SplitGraphWidgetDefinition.new({
        title: "",
        type: DatadogAPIClient::V1::SplitGraphWidgetDefinitionType::SPLIT_GROUP,
        source_widget_definition: DatadogAPIClient::V1::DistributionWidgetDefinition.new({
          title: "",
          title_size: "16",
          title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
          type: DatadogAPIClient::V1::DistributionWidgetDefinitionType::DISTRIBUTION,
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
          xaxis: DatadogAPIClient::V1::DistributionWidgetXAxis.new({
            scale: "linear",
            include_zero: true,
            min: "auto",
            max: "auto",
          }),
          yaxis: DatadogAPIClient::V1::DistributionWidgetYAxis.new({
            scale: "linear",
            include_zero: true,
            min: "auto",
            max: "auto",
          }),
        }),
        split_config: DatadogAPIClient::V1::SplitConfig.new({
          split_dimensions: [
            DatadogAPIClient::V1::SplitDimension.new({
              one_graph_per: "service",
            }),
          ],
          limit: 6,
          sort: DatadogAPIClient::V1::SplitSort.new({
            compute: DatadogAPIClient::V1::SplitConfigSortCompute.new({
              aggregation: "sum",
              metric: "system.cpu.user",
            }),
            order: DatadogAPIClient::V1::WidgetSort::DESCENDING,
          }),
        }),
        size: DatadogAPIClient::V1::SplitGraphVizSize::MD,
      }),
    }),
  ],
  template_variables: [],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
  is_read_only: false,
  notify_list: [],
})
p api_instance.create_dashboard(body)

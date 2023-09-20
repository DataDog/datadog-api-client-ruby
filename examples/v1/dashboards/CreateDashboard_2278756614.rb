# Create a new dashboard with split graph widget

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
        source_widget_definition: DatadogAPIClient::V1::TimeseriesWidgetDefinition.new({
          title: "",
          title_size: "16",
          title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
          type: DatadogAPIClient::V1::TimeseriesWidgetDefinitionType::TIMESERIES,
          requests: [
            DatadogAPIClient::V1::TimeseriesWidgetRequest.new({
              response_format: DatadogAPIClient::V1::FormulaAndFunctionResponseFormat::TIMESERIES,
              queries: [
                DatadogAPIClient::V1::FormulaAndFunctionMetricQueryDefinition.new({
                  name: "query1",
                  data_source: DatadogAPIClient::V1::FormulaAndFunctionMetricDataSource::METRICS,
                  query: "avg:system.cpu.user{*}",
                }),
              ],
              style: DatadogAPIClient::V1::WidgetRequestStyle.new({
                palette: "dog_classic",
                line_type: DatadogAPIClient::V1::WidgetLineType::SOLID,
                line_width: DatadogAPIClient::V1::WidgetLineWidth::NORMAL,
              }),
              display_type: DatadogAPIClient::V1::WidgetDisplayType::LINE,
            }),
          ],
        }),
        split_config: DatadogAPIClient::V1::SplitConfig.new({
          split_dimensions: [
            DatadogAPIClient::V1::SplitDimension.new({
              one_graph_per: "service",
            }),
          ],
          limit: 24,
          sort: DatadogAPIClient::V1::SplitSort.new({
            compute: DatadogAPIClient::V1::SplitConfigSortCompute.new({
              aggregation: "sum",
              metric: "system.cpu.user",
            }),
            order: DatadogAPIClient::V1::WidgetSort::DESCENDING,
          }),
          static_splits: [
            [
              DatadogAPIClient::V1::SplitVectorEntryItem.new({
                tag_key: "service",
                tag_values: [
                  "cassandra",
                ],
              }),
              DatadogAPIClient::V1::SplitVectorEntryItem.new({
                tag_key: "datacenter",
                tag_values: [],
              }),
            ],
            [
              DatadogAPIClient::V1::SplitVectorEntryItem.new({
                tag_key: "demo",
                tag_values: [
                  "env",
                ],
              }),
            ],
          ],
        }),
        size: DatadogAPIClient::V1::SplitGraphVizSize::MD,
        has_uniform_y_axes: true,
      }),
    }),
  ],
  template_variables: [],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
  is_read_only: false,
  notify_list: [],
})
p api_instance.create_dashboard(body)

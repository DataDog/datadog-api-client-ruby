# Create a new dashboard with topology_map custom widget

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard",
  description: "",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      layout: DatadogAPIClient::V1::WidgetLayout.new({
        x: 0,
        y: 0,
        width: 47,
        height: 15,
      }),
      definition: DatadogAPIClient::V1::TopologyMapWidgetDefinitionCustom.new({
        title: "",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        type: DatadogAPIClient::V1::TopologyMapWidgetDefinitionType::TOPOLOGY_MAP,
        layout: DatadogAPIClient::V1::TopologyMapLayout.new({
          type: DatadogAPIClient::V1::TopologyMapLayoutType::HIERARCHICAL,
          direction: DatadogAPIClient::V1::TopologyMapLayoutDirection::LEFT_TO_RIGHT,
        }),
        data: DatadogAPIClient::V1::TopologyMapInlineData.new({
          nodes: DatadogAPIClient::V1::TopologyMapInlineNodesData.new({
            columns: [
              DatadogAPIClient::V1::TopologyMapInlineNodeIdColumn.new({
                kind: DatadogAPIClient::V1::TopologyMapInlineColumnKindString::STRING,
                id: DatadogAPIClient::V1::TopologyMapInlineNodeIdColumnId::ID,
                values: [
                  "service:web",
                  "service:db",
                ],
              }),
              DatadogAPIClient::V1::TopologyMapInlineNodeStringColumn.new({
                kind: DatadogAPIClient::V1::TopologyMapInlineColumnKindString::STRING,
                id: DatadogAPIClient::V1::TopologyMapInlineNodeStringColumnId::SUBTITLE,
                values: [
                  "api-team",
                  nil,
                ],
              }),
              DatadogAPIClient::V1::TopologyMapInlineNodeValueColumn.new({
                kind: DatadogAPIClient::V1::TopologyMapInlineColumnKindScalar::SCALAR,
                id: "values[1]",
                values: [
                  1.5,
                  nil,
                ],
                meta: DatadogAPIClient::V1::TopologyMapInlineNodeValueColumnMeta.new({
                  unit: DatadogAPIClient::V1::NumberFormatUnitCanonical.new({
                    type: DatadogAPIClient::V1::NumberFormatUnitScaleType::CANONICAL_UNIT,
                    unit_name: "second",
                  }),
                }),
              }),
            ],
          }),
          edges: DatadogAPIClient::V1::TopologyMapInlineEdgesData.new({
            columns: [
              DatadogAPIClient::V1::TopologyMapInlineEdgeColumn.new({
                kind: DatadogAPIClient::V1::TopologyMapInlineColumnKindString::STRING,
                id: DatadogAPIClient::V1::TopologyMapInlineEdgeColumnId::SOURCE,
                values: [
                  "service:web",
                ],
              }),
              DatadogAPIClient::V1::TopologyMapInlineEdgeColumn.new({
                kind: DatadogAPIClient::V1::TopologyMapInlineColumnKindString::STRING,
                id: DatadogAPIClient::V1::TopologyMapInlineEdgeColumnId::TARGET,
                values: [
                  "service:db",
                ],
              }),
            ],
          }),
        }),
        requests: [
          DatadogAPIClient::V1::TopologyRequestCustom.new({
            response_format: DatadogAPIClient::V1::TopologyRequestCustomResponseFormat::SCALAR,
            queries: [
              DatadogAPIClient::V1::FormulaAndFunctionMetricQueryDefinition.new({
                data_source: DatadogAPIClient::V1::FormulaAndFunctionMetricDataSource::METRICS,
                name: "a",
                query: "avg:system.cpu.user{*} by {service}",
                aggregator: DatadogAPIClient::V1::FormulaAndFunctionMetricAggregation::AVG,
              }),
            ],
            formulas: [
              DatadogAPIClient::V1::WidgetFormula.new({
                formula: "a",
              }),
            ],
            projection: DatadogAPIClient::V1::TopologyRequestCustomProjection.new({
              type: DatadogAPIClient::V1::TopologyRequestCustomProjectionType::CUSTOM_TOPOLOGY_MAP_NODE,
              dimensions: [
                DatadogAPIClient::V1::TopologyRequestCustomProjectionDimension.new({
                  column: "a",
                  dimension: "values[0]",
                }),
              ],
            }),
          }),
        ],
      }),
    }),
  ],
  template_variables: [],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::FREE,
  notify_list: [],
})
p api_instance.create_dashboard(body)

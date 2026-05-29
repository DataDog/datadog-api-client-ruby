# Create a new dashboard with hostmap infra widget

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard",
  description: nil,
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      layout: DatadogAPIClient::V1::WidgetLayout.new({
        x: 0,
        y: 0,
        width: 47,
        height: 22,
      }),
      definition: DatadogAPIClient::V1::HostMapWidgetDefinition.new({
        title: "",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        type: DatadogAPIClient::V1::HostMapWidgetDefinitionType::HOSTMAP,
        requests: DatadogAPIClient::V1::HostMapWidgetDefinitionRequests.new({
          request_type: DatadogAPIClient::V1::HostMapWidgetInfrastructureRequestRequestType::INFRASTRUCTURE_HOSTMAP,
          node_type: DatadogAPIClient::V1::HostMapWidgetNodeType::HOST,
          filter: "env:prod",
          group_by: [
            DatadogAPIClient::V1::HostMapWidgetGroupBy.new({
              column: "tags",
              key: "service",
            }),
          ],
          enrichments: [
            DatadogAPIClient::V1::HostMapWidgetScalarRequest.new({
              response_format: DatadogAPIClient::V1::HostMapWidgetScalarRequestResponseFormat::SCALAR,
              queries: [
                DatadogAPIClient::V1::FormulaAndFunctionMetricQueryDefinition.new({
                  data_source: DatadogAPIClient::V1::FormulaAndFunctionMetricDataSource::METRICS,
                  name: "query1",
                  query: "avg:system.cpu.user{*} by {host}",
                }),
              ],
              formulas: [
                DatadogAPIClient::V1::HostMapWidgetFormula.new({
                  formula: "query1",
                  dimension: DatadogAPIClient::V1::HostMapWidgetDimension::FILL,
                }),
              ],
            }),
          ],
          style: DatadogAPIClient::V1::HostMapWidgetInfrastructureStyle.new({
            palette: "green_to_orange",
            palette_flip: false,
          }),
        }),
      }),
    }),
  ],
  template_variables: [],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::FREE,
  notify_list: [],
})
p api_instance.create_dashboard(body)

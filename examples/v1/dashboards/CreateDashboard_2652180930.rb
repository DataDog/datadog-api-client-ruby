# Create a new dashboard with topology_map widget

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
        width: 47,
        height: 15,
      }),
      definition: DatadogAPIClient::V1::TopologyMapWidgetDefinition.new({
        title: "",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        type: DatadogAPIClient::V1::TopologyMapWidgetDefinitionType::TOPOLOGY_MAP,
        requests: [
          DatadogAPIClient::V1::TopologyRequest.new({
            request_type: DatadogAPIClient::V1::TopologyRequestType::TOPOLOGY,
            query: DatadogAPIClient::V1::TopologyQuery.new({
              data_source: DatadogAPIClient::V1::TopologyQueryDataSource::SERVICE_MAP,
              service: "",
              filters: [
                "env:none",
                "environment:*",
              ],
            }),
          }),
        ],
      }),
    }),
  ],
  template_variables: [],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::FREE,
  is_read_only: false,
  notify_list: [],
})
p api_instance.create_dashboard(body)

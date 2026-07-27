# Create a new dashboard with topology_map data_streams widget

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
            query: DatadogAPIClient::V1::TopologyQueryDataStreamsOrServiceMap.new({
              data_source: DatadogAPIClient::V1::TopologyQueryDataStreamsOrServiceMapDataSource::DATA_STREAMS,
              service: "",
              filters: [
                "env:prod",
              ],
              query_string: "service:myservice",
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

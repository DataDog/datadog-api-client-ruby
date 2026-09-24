# Create a new dashboard with topology_map widget

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
      definition: DatadogAPIClient::V1::TopologyMapWidgetDefinitionServiceMap.new({
        title: "",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        type: DatadogAPIClient::V1::TopologyMapWidgetDefinitionType::TOPOLOGY_MAP,
        requests: [
          DatadogAPIClient::V1::TopologyRequestServiceMap.new({
            request_type: DatadogAPIClient::V1::TopologyRequestType::TOPOLOGY,
            query: DatadogAPIClient::V1::TopologyQueryServiceMap.new({
              data_source: DatadogAPIClient::V1::TopologyQueryServiceMapDataSource::SERVICE_MAP,
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
  notify_list: [],
})
p api_instance.create_dashboard(body)

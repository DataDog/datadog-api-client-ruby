# Create a new dashboard with hostmap widget

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
          fill: DatadogAPIClient::V1::HostMapRequest.new({
            q: "avg:system.cpu.user{*} by {host}",
          }),
        }),
        node_type: DatadogAPIClient::V1::WidgetNodeType::HOST,
        no_metric_hosts: true,
        no_group_hosts: true,
        style: DatadogAPIClient::V1::HostMapWidgetDefinitionStyle.new({
          palette: "green_to_orange",
          palette_flip: false,
        }),
      }),
    }),
  ],
  template_variables: [],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::FREE,
  is_read_only: false,
  notify_list: [],
})
p api_instance.create_dashboard(body)

# Create a new dashboard with check_status widget

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
        width: 15,
        height: 8,
      }),
      definition: DatadogAPIClient::V1::CheckStatusWidgetDefinition.new({
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        type: DatadogAPIClient::V1::CheckStatusWidgetDefinitionType::CHECK_STATUS,
        check: "datadog.agent.up",
        grouping: DatadogAPIClient::V1::WidgetGrouping::CHECK,
        tags: [
          "*",
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

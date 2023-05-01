# Create a new dashboard with image widget

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
        height: 12,
      }),
      definition: DatadogAPIClient::V1::ImageWidgetDefinition.new({
        type: DatadogAPIClient::V1::ImageWidgetDefinitionType::IMAGE,
        url: "https://example.com/image.png",
        sizing: DatadogAPIClient::V1::WidgetImageSizing::COVER,
      }),
    }),
  ],
  template_variables: [],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::FREE,
  is_read_only: false,
  notify_list: [],
})
p api_instance.create_dashboard(body)

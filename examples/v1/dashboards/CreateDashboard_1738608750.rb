# Create a new dashboard with free_text widget

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
        width: 24,
        height: 6,
      }),
      definition: DatadogAPIClient::V1::FreeTextWidgetDefinition.new({
        type: DatadogAPIClient::V1::FreeTextWidgetDefinitionType::FREE_TEXT,
        text: "Example free text",
        color: "#4d4d4d",
        font_size: "auto",
        text_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
      }),
    }),
  ],
  template_variables: [],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::FREE,
  is_read_only: false,
  notify_list: [],
})
p api_instance.create_dashboard(body)

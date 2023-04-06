# Create a new dashboard with log_stream widget

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
        height: 36,
      }),
      definition: DatadogAPIClient::V1::LogStreamWidgetDefinition.new({
        title: "",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        type: DatadogAPIClient::V1::LogStreamWidgetDefinitionType::LOG_STREAM,
        indexes: [
          "main",
        ],
        query: "",
        sort: DatadogAPIClient::V1::WidgetFieldSort.new({
          column: "time",
          order: DatadogAPIClient::V1::WidgetSort::DESCENDING,
        }),
        columns: [
          "host",
          "service",
        ],
        show_date_column: true,
        show_message_column: true,
        message_display: DatadogAPIClient::V1::WidgetMessageDisplay::EXPANDED_MEDIUM,
      }),
    }),
  ],
  template_variables: [],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::FREE,
  is_read_only: false,
  notify_list: [],
})
p api_instance.create_dashboard(body)

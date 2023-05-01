# Create a new dashboard with manage_status widget

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
        width: 50,
        height: 25,
      }),
      definition: DatadogAPIClient::V1::MonitorSummaryWidgetDefinition.new({
        type: DatadogAPIClient::V1::MonitorSummaryWidgetDefinitionType::MANAGE_STATUS,
        summary_type: DatadogAPIClient::V1::WidgetSummaryType::MONITORS,
        display_format: DatadogAPIClient::V1::WidgetMonitorSummaryDisplayFormat::COUNTS_AND_LIST,
        color_preference: DatadogAPIClient::V1::WidgetColorPreference::TEXT,
        hide_zero_counts: true,
        show_last_triggered: false,
        query: "",
        sort: DatadogAPIClient::V1::WidgetMonitorSummarySort::STATUS_ASCENDING,
        count: 50,
        start: 0,
      }),
    }),
  ],
  template_variables: [],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::FREE,
  is_read_only: false,
  notify_list: [],
})
p api_instance.create_dashboard(body)

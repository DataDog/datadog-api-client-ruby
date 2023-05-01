# Create a new dashboard with slo widget

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

# there is a valid "slo" in the system
SLO_DATA_0_ID = ENV["SLO_DATA_0_ID"]

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard",
  description: "",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      layout: DatadogAPIClient::V1::WidgetLayout.new({
        x: 0,
        y: 0,
        width: 60,
        height: 21,
      }),
      definition: DatadogAPIClient::V1::SLOWidgetDefinition.new({
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        type: DatadogAPIClient::V1::SLOWidgetDefinitionType::SLO,
        view_type: "detail",
        time_windows: [
          DatadogAPIClient::V1::WidgetTimeWindows::SEVEN_DAYS,
        ],
        slo_id: SLO_DATA_0_ID,
        show_error_budget: true,
        view_mode: DatadogAPIClient::V1::WidgetViewMode::OVERALL,
        global_time_target: "0",
        additional_query_filters: "!host:excluded_host",
      }),
    }),
  ],
  template_variables: [],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::FREE,
  is_read_only: false,
  notify_list: [],
})
p api_instance.create_dashboard(body)

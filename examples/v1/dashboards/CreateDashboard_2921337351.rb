# Create a new dashboard with trace_service widget

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
        width: 72,
        height: 72,
      }),
      definition: DatadogAPIClient::V1::ServiceSummaryWidgetDefinition.new({
        title: "Service Summary",
        time: DatadogAPIClient::V1::WidgetTime.new({}),
        type: DatadogAPIClient::V1::ServiceSummaryWidgetDefinitionType::TRACE_SERVICE,
        env: "none",
        service: "",
        span_name: "",
        show_hits: true,
        show_errors: true,
        show_latency: true,
        show_breakdown: true,
        show_distribution: true,
        show_resource_list: false,
        size_format: DatadogAPIClient::V1::WidgetSizeFormat::MEDIUM,
        display_format: DatadogAPIClient::V1::WidgetServiceSummaryDisplayFormat::TWO_COLUMN,
      }),
    }),
  ],
  template_variables: [],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::FREE,
  is_read_only: false,
  notify_list: [],
})
p api_instance.create_dashboard(body)

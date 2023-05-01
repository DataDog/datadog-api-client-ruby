# Create a new dashboard with slo list widget

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
        width: 60,
        height: 21,
      }),
      definition: DatadogAPIClient::V1::SLOListWidgetDefinition.new({
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        type: DatadogAPIClient::V1::SLOListWidgetDefinitionType::SLO_LIST,
        requests: [
          DatadogAPIClient::V1::SLOListWidgetRequest.new({
            query: DatadogAPIClient::V1::SLOListWidgetQuery.new({
              query_string: "env:prod AND service:my-app",
              limit: 75,
            }),
            request_type: DatadogAPIClient::V1::SLOListWidgetRequestType::SLO_LIST,
          }),
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

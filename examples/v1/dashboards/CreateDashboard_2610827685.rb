# Create a new dashboard with run-workflow widget

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
        height: 15,
      }),
      definition: DatadogAPIClient::V1::RunWorkflowWidgetDefinition.new({
        title: "Run workflow title",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        time: DatadogAPIClient::V1::WidgetTime.new({}),
        type: DatadogAPIClient::V1::RunWorkflowWidgetDefinitionType::RUN_WORKFLOW,
        workflow_id: "2e055f16-8b6a-4cdd-b452-17a34c44b160",
        inputs: [
          DatadogAPIClient::V1::RunWorkflowWidgetInput.new({
            name: "environment",
            value: "$env.value",
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

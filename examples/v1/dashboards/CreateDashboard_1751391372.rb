# Create a new dashboard with template variable type field returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  description: nil,
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
  notify_list: [],
  reflow_type: DatadogAPIClient::V1::DashboardReflowType::AUTO,
  restricted_roles: [],
  template_variables: [
    DatadogAPIClient::V1::DashboardTemplateVariable.new({
      available_values: [
        "service",
        "datacenter",
        "env",
      ],
      defaults: [
        "service",
        "datacenter",
      ],
      name: "group_by_var",
      type: "group",
    }),
  ],
  title: "",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::HostMapWidgetDefinition.new({
        requests: DatadogAPIClient::V1::HostMapWidgetDefinitionRequests.new({
          fill: DatadogAPIClient::V1::HostMapRequest.new({
            q: "avg:system.cpu.user{*}",
          }),
        }),
        type: DatadogAPIClient::V1::HostMapWidgetDefinitionType::HOSTMAP,
      }),
    }),
  ],
})
p api_instance.create_dashboard(body)

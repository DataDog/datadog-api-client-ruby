# Create a new dashboard with template variable presets using values returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  description: nil,
  is_read_only: false,
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
  notify_list: [],
  reflow_type: DatadogAPIClient::V1::DashboardReflowType::AUTO,
  restricted_roles: [],
  template_variable_presets: [
    DatadogAPIClient::V1::DashboardTemplateVariablePreset.new({
      name: "my saved view",
      template_variables: [
        DatadogAPIClient::V1::DashboardTemplateVariablePresetValue.new({
          name: "datacenter",
          values: [
            "*",
            "my-host",
          ],
        }),
      ],
    }),
  ],
  template_variables: [
    DatadogAPIClient::V1::DashboardTemplateVariable.new({
      available_values: [
        "my-host",
        "host1",
        "host2",
      ],
      defaults: [
        "my-host",
      ],
      name: "host1",
      prefix: "host",
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

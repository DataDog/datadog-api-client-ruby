# Create a shared dashboard with a group template variable returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

# there is a valid "dashboard" in the system
DASHBOARD_ID = ENV["DASHBOARD_ID"]

body = DatadogAPIClient::V1::SharedDashboard.new({
  dashboard_id: DASHBOARD_ID,
  dashboard_type: DatadogAPIClient::V1::DashboardType::CUSTOM_TIMEBOARD,
  share_type: DatadogAPIClient::V1::DashboardShareType::OPEN,
  global_time: DatadogAPIClient::V1::DashboardGlobalTime.new({
    live_span: DatadogAPIClient::V1::DashboardGlobalTimeLiveSpan::PAST_ONE_HOUR,
  }),
  selectable_template_vars: [
    DatadogAPIClient::V1::SelectableTemplateVariableItems.new({
      default_value: "*",
      name: "group_by_var",
      type: "group",
      visible_tags: [
        "selectableValue1",
        "selectableValue2",
      ],
    }),
  ],
})
p api_instance.create_public_dashboard(body)

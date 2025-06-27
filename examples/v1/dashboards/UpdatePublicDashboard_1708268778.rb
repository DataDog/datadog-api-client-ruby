# Update a shared dashboard with selectable_template_vars returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

# there is a valid "shared_dashboard" in the system
SHARED_DASHBOARD_TOKEN = ENV["SHARED_DASHBOARD_TOKEN"]

body = DatadogAPIClient::V1::SharedDashboardUpdateRequest.new({
  global_time: DatadogAPIClient::V1::SharedDashboardUpdateRequestGlobalTime.new({
    live_span: DatadogAPIClient::V1::DashboardGlobalTimeLiveSpan::PAST_FIFTEEN_MINUTES,
  }),
  share_list: [],
  share_type: DatadogAPIClient::V1::DashboardShareType::OPEN,
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
p api_instance.update_public_dashboard(SHARED_DASHBOARD_TOKEN, body)

# Create a dashboard list returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardListsAPI.new

body = DatadogAPIClient::V1::DashboardList.new({
  name: "Example-Create_a_dashboard_list_returns_OK_response",
})
p api_instance.create_dashboard_list(body)

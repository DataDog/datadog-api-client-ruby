# Create a dashboard list returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardListsAPI.new

body = DatadogAPIClient::V1::DashboardList.new({
  name: "Example-Dashboard-List",
})
p api_instance.create_dashboard_list(body)

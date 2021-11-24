# Update a dashboard list returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardListsAPI.new

# there is a valid "dashboard_list" in the system
DASHBOARD_LIST_ID = ENV["DASHBOARD_LIST_ID"]

body = DatadogAPIClient::V1::DashboardList.new({
  name: "updated Example-Update_a_dashboard_list_returns_OK_response",
})
p api_instance.update_dashboard_list(DASHBOARD_LIST_ID.to_i, body)

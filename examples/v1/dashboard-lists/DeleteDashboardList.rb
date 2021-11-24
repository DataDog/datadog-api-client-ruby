# Delete a dashboard list returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardListsAPI.new

# there is a valid "dashboard_list" in the system
DASHBOARD_LIST_ID = ENV["DASHBOARD_LIST_ID"]
p api_instance.delete_dashboard_list(DASHBOARD_LIST_ID.to_i)

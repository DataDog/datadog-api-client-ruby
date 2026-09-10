# Get dashboard list items with five team tags and two AI tags

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DashboardListsAPI.new

# there is a valid "dashboard_list" in the system
DASHBOARD_LIST_ID = ENV["DASHBOARD_LIST_ID"]
p api_instance.get_dashboard_list_items(DASHBOARD_LIST_ID.to_i)

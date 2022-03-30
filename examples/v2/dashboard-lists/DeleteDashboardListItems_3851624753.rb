# Delete custom screenboard dashboard from an existing dashboard list returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DashboardListsAPI.new

# there is a valid "dashboard_list" in the system
DASHBOARD_LIST_ID = ENV["DASHBOARD_LIST_ID"]

# there is a valid "screenboard_dashboard" in the system
SCREENBOARD_DASHBOARD_ID = ENV["SCREENBOARD_DASHBOARD_ID"]

body = DatadogAPIClient::V2::DashboardListDeleteItemsRequest.new({
  dashboards: [
    DatadogAPIClient::V2::DashboardListItemRequest.new({
      id: SCREENBOARD_DASHBOARD_ID,
      type: DatadogAPIClient::V2::DashboardType::CUSTOM_SCREENBOARD,
    }),
  ],
})
p api_instance.delete_dashboard_list_items(DASHBOARD_LIST_ID.to_i, body)

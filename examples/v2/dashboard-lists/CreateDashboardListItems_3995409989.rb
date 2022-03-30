# Add custom timeboard dashboard to an existing dashboard list returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DashboardListsAPI.new

# there is a valid "dashboard_list" in the system
DASHBOARD_LIST_ID = ENV["DASHBOARD_LIST_ID"]

# there is a valid "dashboard" in the system
DASHBOARD_ID = ENV["DASHBOARD_ID"]

body = DatadogAPIClient::V2::DashboardListAddItemsRequest.new({
  dashboards: [
    DatadogAPIClient::V2::DashboardListItemRequest.new({
      id: DASHBOARD_ID,
      type: DatadogAPIClient::V2::DashboardType::CUSTOM_TIMEBOARD,
    }),
  ],
})
p api_instance.create_dashboard_list_items(DASHBOARD_LIST_ID.to_i, body)

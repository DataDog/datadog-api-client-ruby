# Delete items from a dashboard list returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DashboardListsAPI.new

body = DatadogAPIClient::V2::DashboardListDeleteItemsRequest.new({
  dashboards: [
    DatadogAPIClient::V2::DashboardListItemRequest.new({
      id: "q5j-nti-fv6",
      type: DatadogAPIClient::V2::DashboardType::HOST_TIMEBOARD,
    }),
  ],
})
p api_instance.delete_dashboard_list_items(9223372036854775807, body)

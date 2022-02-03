require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DashboardListsAPI.new
dashboard_list_id = 789 # Integer | ID of the dashboard list to add items to.
body = DatadogAPIClient::V2::DashboardListAddItemsRequest.new # DashboardListAddItemsRequest | Dashboards to add to the dashboard list.

begin
  # Add Items to a Dashboard List
  result = api_instance.create_dashboard_list_items(dashboard_list_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling DashboardListsAPI->create_dashboard_list_items: #{e}"
end

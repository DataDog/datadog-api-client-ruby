require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DashboardListsAPI.new
dashboard_list_id = 789 # Integer | ID of the dashboard list to update items from.
body = DatadogAPIClient::V2::DashboardListUpdateItemsRequest.new # DashboardListUpdateItemsRequest | New dashboards of the dashboard list.

begin
  # Update items of a dashboard list
  result = api_instance.update_dashboard_list_items(dashboard_list_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling DashboardListsAPI->update_dashboard_list_items: #{e}"
end

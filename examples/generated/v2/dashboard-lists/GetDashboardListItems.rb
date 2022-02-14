require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DashboardListsAPI.new
dashboard_list_id = 789 # Integer | ID of the dashboard list to get items from.

begin
  # Get items of a Dashboard List
  result = api_instance.get_dashboard_list_items(dashboard_list_id)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling DashboardListsAPI->get_dashboard_list_items: #{e}"
end

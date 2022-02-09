require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardListsAPI.new
list_id = 789 # Integer | ID of the dashboard list to update.
body = DatadogAPIClient::V1::DashboardList.new({ name: "My Dashboard" }) # DashboardList | Update a dashboard list request body.

begin
  # Update a dashboard list
  result = api_instance.update_dashboard_list(list_id, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardListsAPI->update_dashboard_list: #{e}"
end

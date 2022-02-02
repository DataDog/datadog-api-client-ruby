require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DashboardListsAPI.new
list_id = 789 # Integer | ID of the dashboard list to fetch.

begin
  # Get a dashboard list
  result = api_instance.get_dashboard_list(list_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardListsAPI->get_dashboard_list: #{e}"
end

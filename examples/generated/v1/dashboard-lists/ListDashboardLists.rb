require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardListsAPI.new

begin
  # Get all dashboard lists
  result = api_instance.list_dashboard_lists
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardListsAPI->list_dashboard_lists: #{e}"
end

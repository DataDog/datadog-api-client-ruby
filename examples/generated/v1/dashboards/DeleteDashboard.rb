require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new
dashboard_id = "dashboard_id_example" # String | The ID of the dashboard.

begin
  # Delete a dashboard
  result = api_instance.delete_dashboard(dashboard_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardsAPI->delete_dashboard: #{e}"
end

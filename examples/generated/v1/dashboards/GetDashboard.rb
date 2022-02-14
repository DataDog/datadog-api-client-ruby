require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new
dashboard_id = "dashboard_id_example" # String | The ID of the dashboard.

begin
  # Get a dashboard
  result = api_instance.get_dashboard(dashboard_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardsAPI->get_dashboard: #{e}"
end

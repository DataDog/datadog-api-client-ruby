require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DashboardListsAPI.new
body = DatadogAPIClient::V1::DashboardList.new({name: 'My Dashboard'}) # DashboardList | Create a dashboard list request body.

begin
  # Create a dashboard list
  result = api_instance.create_dashboard_list(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardListsAPI->create_dashboard_list: #{e}"
end

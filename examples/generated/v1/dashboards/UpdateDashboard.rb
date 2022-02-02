require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DashboardsAPI.new
dashboard_id = 'dashboard_id_example' # String | The ID of the dashboard.
body = DatadogAPIClient::V1::Dashboard.new({layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED, title: 'title_example', widgets: [DatadogAPIClient::V1::Widget.new({definition: DatadogAPIClient::V1::AlertGraphWidgetDefinition.new({alert_id: 'alert_id_example', type: DatadogAPIClient::V1::AlertGraphWidgetDefinitionType::ALERT_GRAPH, viz_type: DatadogAPIClient::V1::WidgetVizType::TIMESERIES})})]}) # Dashboard | Update Dashboard request body.

begin
  # Update a dashboard
  result = api_instance.update_dashboard(dashboard_id, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardsAPI->update_dashboard: #{e}"
end

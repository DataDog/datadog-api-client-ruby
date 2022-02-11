require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new
body = DatadogAPIClient::V1::Dashboard.new({ layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED, title: "title_example", widgets: [DatadogAPIClient::V1::Widget.new({ definition: DatadogAPIClient::V1::AlertGraphWidgetDefinition.new({ alert_id: "alert_id_example", type: DatadogAPIClient::V1::AlertGraphWidgetDefinitionType::ALERT_GRAPH, viz_type: DatadogAPIClient::V1::WidgetVizType::TIMESERIES }) })] }) # Dashboard | Create a dashboard request body.

begin
  # Create a new dashboard
  result = api_instance.create_dashboard(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardsAPI->create_dashboard: #{e}"
end

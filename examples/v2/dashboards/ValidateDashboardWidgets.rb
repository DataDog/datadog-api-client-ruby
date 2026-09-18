# Validate dashboard widgets returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.validate_dashboard_widgets".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DashboardsAPI.new

body = DatadogAPIClient::V2::DashboardWidgetValidationRequest.new({
  layout_type: DatadogAPIClient::V2::DashboardWidgetValidationLayoutType::ORDERED,
  reflow_type: DatadogAPIClient::V2::DashboardWidgetValidationReflowType::AUTO,
  widgets: [
    DatadogAPIClient::V2::DashboardWidgetValidationWidget.new({}),
  ],
})
p api_instance.validate_dashboard_widgets(body)

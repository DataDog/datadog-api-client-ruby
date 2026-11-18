# Unlink a Product Analytics monitor from its chart returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.remove_chart_from_product_analytics_monitor".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ProductAnalyticsAPI.new

body = DatadogAPIClient::V2::ProductAnalyticsMonitorUnlinkRequest.new({
  data: DatadogAPIClient::V2::ProductAnalyticsMonitorUnlinkData.new({
    attributes: DatadogAPIClient::V2::ProductAnalyticsMonitorUnlinkAttributes.new({
      chart_id: "chart-1",
      dashboard_id: "dash-1",
    }),
    type: DatadogAPIClient::V2::ProductAnalyticsMonitorUnlinkRequestType::PA_MONITOR_UNLINK_REQUEST,
  }),
})
api_instance.remove_chart_from_product_analytics_monitor("12345", body)

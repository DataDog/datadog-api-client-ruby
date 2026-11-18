# Update a Product Analytics monitor returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_product_analytics_monitor".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ProductAnalyticsAPI.new

body = DatadogAPIClient::V2::ProductAnalyticsMonitorUpdateRequest.new({
  data: DatadogAPIClient::V2::ProductAnalyticsMonitorUpdateData.new({
    attributes: DatadogAPIClient::V2::ProductAnalyticsMonitorUpdateAttributes.new({
      name: "Funnel conversion drop",
      options: DatadogAPIClient::V2::ProductAnalyticsMonitorOptions.new({
        thresholds: DatadogAPIClient::V2::ProductAnalyticsMonitorThresholds.new({
          critical: 1,
          warning: 1.5,
        }),
      }),
    }),
    type: DatadogAPIClient::V2::ProductAnalyticsMonitorRequestType::PA_MONITOR_REQUEST,
  }),
})
p api_instance.update_product_analytics_monitor("12345", body)

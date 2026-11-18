# Create a Product Analytics monitor returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_product_analytics_monitor".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ProductAnalyticsAPI.new

body = DatadogAPIClient::V2::ProductAnalyticsMonitorCreateRequest.new({
  data: DatadogAPIClient::V2::ProductAnalyticsMonitorCreateData.new({
    attributes: DatadogAPIClient::V2::ProductAnalyticsMonitorCreateAttributes.new({
      message: 'Conversion from /a to /b dropped over the last hour\n\n@slack-my-alerts-channel',
      name: "Funnel conversion drop",
      options: DatadogAPIClient::V2::ProductAnalyticsMonitorOptions.new({
        thresholds: DatadogAPIClient::V2::ProductAnalyticsMonitorThresholds.new({
          critical: 1,
          warning: 2,
        }),
        variables: [
          DatadogAPIClient::V2::ProductAnalyticsMonitorVariable.new({}),
        ],
      }),
      priority: 3,
      query: 'formula("query").rollup("sum").last("1h") < 1',
      tags: {
        chart_id: "chart-1", query_type: "funnel",
      },
    }),
    type: DatadogAPIClient::V2::ProductAnalyticsMonitorRequestType::PA_MONITOR_REQUEST,
  }),
})
p api_instance.create_product_analytics_monitor(body)

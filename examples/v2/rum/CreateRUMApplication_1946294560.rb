# Create a new RUM application with Product Scales returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMAPI.new

body = DatadogAPIClient::V2::RUMApplicationCreateRequest.new({
  data: DatadogAPIClient::V2::RUMApplicationCreate.new({
    attributes: DatadogAPIClient::V2::RUMApplicationCreateAttributes.new({
      name: "test-rum-with-product-scales-5c67ebb32077e1d9",
      type: "browser",
      rum_event_processing_state: DatadogAPIClient::V2::RUMEventProcessingState::ERROR_FOCUSED_MODE,
      product_analytics_retention_state: DatadogAPIClient::V2::RUMProductAnalyticsRetentionState::NONE,
    }),
    type: DatadogAPIClient::V2::RUMApplicationCreateType::RUM_APPLICATION_CREATE,
  }),
})
p api_instance.create_rum_application(body)

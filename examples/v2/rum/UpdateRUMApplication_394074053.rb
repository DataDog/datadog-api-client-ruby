# Update a RUM application with Product Scales returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMAPI.new

# there is a valid "rum_application" in the system
RUM_APPLICATION_DATA_ID = ENV["RUM_APPLICATION_DATA_ID"]

body = DatadogAPIClient::V2::RUMApplicationUpdateRequest.new({
  data: DatadogAPIClient::V2::RUMApplicationUpdate.new({
    attributes: DatadogAPIClient::V2::RUMApplicationUpdateAttributes.new({
      name: "updated_rum_with_product_scales",
      rum_event_processing_state: DatadogAPIClient::V2::RUMEventProcessingState::ALL,
      product_analytics_retention_state: DatadogAPIClient::V2::RUMProductAnalyticsRetentionState::MAX,
    }),
    id: RUM_APPLICATION_DATA_ID,
    type: DatadogAPIClient::V2::RUMApplicationUpdateType::RUM_APPLICATION_UPDATE,
  }),
})
p api_instance.update_rum_application(RUM_APPLICATION_DATA_ID, body)

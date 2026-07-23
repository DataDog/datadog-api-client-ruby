# Update a RUM operation strong link returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_rum_operation_strong_link".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RUMOperationsAPI.new

body = DatadogAPIClient::V2::RUMOperationStrongLinkUpdateRequest.new({
  data: DatadogAPIClient::V2::RUMOperationStrongLinkUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::RUMOperationStrongLinkUpdateRequestAttributes.new({
      status: DatadogAPIClient::V2::RUMOperationStrongLinkUpdateStatus::CONFIRMED,
    }),
    type: DatadogAPIClient::V2::RUMOperationStrongLinkType::STRONG_LINKS,
  }),
})
p api_instance.update_rum_operation_strong_link("operation_id", "feature_id", body)

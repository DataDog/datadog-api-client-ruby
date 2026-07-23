# Create a RUM operation strong link returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_rum_operation_strong_link".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RUMOperationsAPI.new

body = DatadogAPIClient::V2::RUMOperationStrongLinkCreateRequest.new({
  data: DatadogAPIClient::V2::RUMOperationStrongLinkCreateRequestData.new({
    attributes: DatadogAPIClient::V2::RUMOperationStrongLinkCreateRequestAttributes.new({
      description: nil,
      feature_id: "feature-123",
      operation_id: "abc12345-1234-5678-abcd-ef1234567890",
      status: DatadogAPIClient::V2::RUMOperationStrongLinkStatus::CONFIRMED,
      tags: [],
    }),
    type: DatadogAPIClient::V2::RUMOperationStrongLinkType::STRONG_LINKS,
  }),
})
p api_instance.create_rum_operation_strong_link(body)

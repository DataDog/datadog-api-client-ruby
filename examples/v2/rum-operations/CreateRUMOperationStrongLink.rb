# Create a RUM operation link returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::RUMOperationsAPI.new

# there is a valid "rum_operation" in the system
RUM_OPERATION_DATA_ID = ENV["RUM_OPERATION_DATA_ID"]

body = DatadogAPIClient::V2::RUMOperationStrongLinkCreateRequest.new({
  data: DatadogAPIClient::V2::RUMOperationStrongLinkCreateRequestData.new({
    type: DatadogAPIClient::V2::RUMOperationStrongLinkType::STRONG_LINKS,
    attributes: DatadogAPIClient::V2::RUMOperationStrongLinkCreateRequestAttributes.new({
      operation_id: RUM_OPERATION_DATA_ID,
      feature_id: "bdd-examplerumoperation",
      status: DatadogAPIClient::V2::RUMOperationStrongLinkStatus::DRAFT,
      tags: [
        "team:rum-backend",
      ],
    }),
  }),
})
p api_instance.create_rum_operation_strong_link(body)

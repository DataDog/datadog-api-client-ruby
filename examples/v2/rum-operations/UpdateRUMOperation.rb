# Update a RUM operation returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::RUMOperationsAPI.new

# there is a valid "rum_operation" in the system
RUM_OPERATION_DATA_ATTRIBUTES_NAME = ENV["RUM_OPERATION_DATA_ATTRIBUTES_NAME"]
RUM_OPERATION_DATA_ID = ENV["RUM_OPERATION_DATA_ID"]

body = DatadogAPIClient::V2::RUMOperationUpdateRequest.new({
  data: DatadogAPIClient::V2::RUMOperationUpdateRequestData.new({
    id: RUM_OPERATION_DATA_ID,
    type: DatadogAPIClient::V2::RUMOperationType::OPERATIONS,
    attributes: DatadogAPIClient::V2::RUMOperationRequestAttributes.new({
      name: RUM_OPERATION_DATA_ATTRIBUTES_NAME,
      display_name: "BDD operation updated",
      tags: [
        "team:rum-backend",
      ],
      journey_rum: DatadogAPIClient::V2::RUMOperationJourneyRum.new({
        rum_steps: [
          DatadogAPIClient::V2::RUMOperationJourneyStep.new({
            type: DatadogAPIClient::V2::RUMOperationJourneyStepType::START,
            nodes: [
              DatadogAPIClient::V2::RUMOperationJourneyNode.new({
                query: "@type:action @action.type:click",
              }),
            ],
          }),
          DatadogAPIClient::V2::RUMOperationJourneyStep.new({
            type: DatadogAPIClient::V2::RUMOperationJourneyStepType::STOP,
            nodes: [
              DatadogAPIClient::V2::RUMOperationJourneyNode.new({
                query: "@type:view",
              }),
            ],
          }),
        ],
      }),
    }),
  }),
})
p api_instance.update_rum_operation(RUM_OPERATION_DATA_ID, body)

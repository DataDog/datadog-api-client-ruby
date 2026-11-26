# Create a RUM operation returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::RUMOperationsAPI.new

body = DatadogAPIClient::V2::RUMOperationCreateRequest.new({
  data: DatadogAPIClient::V2::RUMOperationCreateRequestData.new({
    type: DatadogAPIClient::V2::RUMOperationType::OPERATIONS,
    attributes: DatadogAPIClient::V2::RUMOperationRequestAttributes.new({
      name: "bdd_examplerumoperation",
      display_name: "BDD operation",
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
p api_instance.create_rum_operation(body)

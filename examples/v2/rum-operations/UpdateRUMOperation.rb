# Update a RUM operation returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_rum_operation".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RUMOperationsAPI.new

body = DatadogAPIClient::V2::RUMOperationUpdateRequest.new({
  data: DatadogAPIClient::V2::RUMOperationUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::RUMOperationRequestAttributes.new({
      application_id: nil,
      category: nil,
      description: nil,
      display_name: "Checkout completed",
      feature_ids: [],
      journey_rum: DatadogAPIClient::V2::RUMOperationJourneyRum.new({
        rum_steps: [
          DatadogAPIClient::V2::RUMOperationJourneyStep.new({
            composite: DatadogAPIClient::V2::RUMOperationJourneyCompositeRule.new({
              kind: DatadogAPIClient::V2::RUMOperationJourneyCompositeRuleKind::ALL_OF,
              max_window_ms: 30000,
              predicates: [
                DatadogAPIClient::V2::RUMOperationJourneyPredicate.new({
                  query: "@type:action @action.type:click",
                }),
              ],
            }),
            nodes: [
              DatadogAPIClient::V2::RUMOperationJourneyNode.new({
                query: "@type:action @action.type:click",
              }),
            ],
            type: DatadogAPIClient::V2::RUMOperationJourneyStepType::START,
          }),
        ],
      }),
      name: "checkout_completed",
      tags: [
        "team:checkout",
      ],
    }),
    id: "abc12345-1234-5678-abcd-ef1234567890",
    type: DatadogAPIClient::V2::RUMOperationType::OPERATIONS,
  }),
})
p api_instance.update_rum_operation("operation_id", body)

# Update Scorecard outcomes returns "Accepted" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ScorecardsAPI.new

body = DatadogAPIClient::V2::UpdateOutcomesAsyncRequest.new({
  data: DatadogAPIClient::V2::UpdateOutcomesAsyncRequestData.new({
    attributes: DatadogAPIClient::V2::UpdateOutcomesAsyncAttributes.new({
      results: [
        DatadogAPIClient::V2::UpdateOutcomesAsyncRequestItem.new({
          entity_reference: "service:my-service",
          remarks: 'See: <a href="https://app.datadoghq.com/services">Services</a>',
          rule_id: "q8MQxk8TCqrHnWkx",
          state: DatadogAPIClient::V2::State::PASS,
        }),
      ],
    }),
    type: DatadogAPIClient::V2::UpdateOutcomesAsyncType::BATCHED_OUTCOME,
  }),
})
p api_instance.update_scorecard_outcomes(body)

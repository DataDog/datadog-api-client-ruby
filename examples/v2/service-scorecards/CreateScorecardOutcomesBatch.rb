# Create outcomes batch returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_scorecard_outcomes_batch".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ServiceScorecardsAPI.new

# there is a valid "create_scorecard_rule" in the system
CREATE_SCORECARD_RULE_DATA_ID = ENV["CREATE_SCORECARD_RULE_DATA_ID"]

body = DatadogAPIClient::V2::OutcomesBatchRequest.new({
  data: DatadogAPIClient::V2::OutcomesBatchRequestData.new({
    attributes: DatadogAPIClient::V2::OutcomesBatchAttributes.new({
      results: [
        DatadogAPIClient::V2::OutcomesBatchRequestItem.new({
          remarks: 'See: <a href="https://app.datadoghq.com/services">Services</a>',
          rule_id: CREATE_SCORECARD_RULE_DATA_ID,
          service_name: "my-service",
          state: DatadogAPIClient::V2::State::PASS,
        }),
      ],
    }),
    type: DatadogAPIClient::V2::OutcomesBatchType::BATCHED_OUTCOME,
  }),
})
p api_instance.create_scorecard_outcomes_batch(body)

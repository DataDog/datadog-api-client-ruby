# Update Scorecard outcomes asynchronously returns "Accepted" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_scorecard_outcomes_async".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ServiceScorecardsAPI.new

# there is a valid "create_scorecard_rule" in the system
CREATE_SCORECARD_RULE_DATA_ID = ENV["CREATE_SCORECARD_RULE_DATA_ID"]

body = DatadogAPIClient::V2::UpdateOutcomesAsyncRequest.new({
  data: DatadogAPIClient::V2::UpdateOutcomesAsyncRequestData.new({
    attributes: DatadogAPIClient::V2::UpdateOutcomesAsyncAttributes.new({
      results: [
        DatadogAPIClient::V2::UpdateOutcomesAsyncRequestItem.new({
          rule_id: CREATE_SCORECARD_RULE_DATA_ID,
          entity_reference: "service:my-service",
          remarks: 'See: <a href="https://app.datadoghq.com/services">Services</a>',
          state: DatadogAPIClient::V2::State::PASS,
        }),
      ],
    }),
    type: DatadogAPIClient::V2::UpdateOutcomesAsyncType::BATCHED_OUTCOME,
  }),
})
p api_instance.update_scorecard_outcomes_async(body)

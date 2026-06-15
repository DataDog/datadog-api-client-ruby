# Trigger a patterns run returns "Accepted" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.trigger_llm_obs_patterns".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsPatternsTriggerRequest.new({
  data: DatadogAPIClient::V2::LLMObsPatternsTriggerRequestData.new({
    attributes: DatadogAPIClient::V2::LLMObsPatternsTriggerRequestAttributes.new({
      config_id: "a7c8d9e0-1234-5678-9abc-def012345678",
    }),
    type: DatadogAPIClient::V2::LLMObsPatternsRequestType::TOPIC_DISCOVERY,
  }),
})
p api_instance.trigger_llm_obs_patterns(body)

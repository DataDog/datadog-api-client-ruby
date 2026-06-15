# Create or update a patterns configuration returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.upsert_llm_obs_patterns_config".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsPatternsConfigUpsertRequest.new({
  data: DatadogAPIClient::V2::LLMObsPatternsConfigUpsertRequestData.new({
    attributes: DatadogAPIClient::V2::LLMObsPatternsConfigUpsertRequestAttributes.new({
      account_id: "1000000001",
      config_id: "a7c8d9e0-1234-5678-9abc-def012345678",
      evp_query: "@ml_app:support-bot",
      hierarchy_depth: 2,
      integration_provider: "openai",
      model_name: "gpt-4o",
      name: "Support chatbot topics",
      num_records: 1000,
      sampling_ratio: 0.1,
      scope: "",
      template: "",
    }),
    type: DatadogAPIClient::V2::LLMObsPatternsConfigType::TOPIC_DISCOVERY_CONFIGS,
  }),
})
p api_instance.upsert_llm_obs_patterns_config(body)

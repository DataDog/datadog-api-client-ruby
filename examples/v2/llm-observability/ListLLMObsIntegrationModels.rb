# List LLM integration models returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_llm_obs_integration_models".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new
p api_instance.list_llm_obs_integration_models(LLMObsIntegrationName::OPENAI, "account_id")

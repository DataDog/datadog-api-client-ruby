# Update an LLM Observability experiment returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_llm_obs_experiment".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsExperimentUpdateRequest.new({
  data: DatadogAPIClient::V2::LLMObsExperimentUpdateDataRequest.new({
    attributes: DatadogAPIClient::V2::LLMObsExperimentUpdateDataAttributesRequest.new({}),
    type: DatadogAPIClient::V2::LLMObsExperimentType::EXPERIMENTS,
  }),
})
p api_instance.update_llm_obs_experiment("experiment_id", body)

# Update an LLM Observability experiment returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_llm_obs_experiment".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsExperimentUpdateRequest.new({
  data: DatadogAPIClient::V2::LLMObsExperimentUpdateDataRequest.new({
    attributes: DatadogAPIClient::V2::LLMObsExperimentUpdateDataAttributesRequest.new({
      dataset_id: "9f64e5c7-dc5a-45c8-a17c-1b85f0bec97d",
      status: DatadogAPIClient::V2::LLMObsExperimentStatus::COMPLETED,
    }),
    type: DatadogAPIClient::V2::LLMObsExperimentType::EXPERIMENTS,
  }),
})
p api_instance.update_llm_obs_experiment("experiment_id", body)

# Create an LLM Observability experiment returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_llm_obs_experiment".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsExperimentRequest.new({
  data: DatadogAPIClient::V2::LLMObsExperimentDataRequest.new({
    attributes: DatadogAPIClient::V2::LLMObsExperimentDataAttributesRequest.new({
      dataset_id: "9f64e5c7-dc5a-45c8-a17c-1b85f0bec97d",
      name: "My Experiment v1",
      project_id: "a33671aa-24fd-4dcd-9b33-a8ec7dde7751",
    }),
    type: DatadogAPIClient::V2::LLMObsExperimentType::EXPERIMENTS,
  }),
})
p api_instance.create_llm_obs_experiment(body)

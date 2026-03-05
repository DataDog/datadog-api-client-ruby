# Delete LLM Observability experiments returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_llm_obs_experiments".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsDeleteExperimentsRequest.new({
  data: DatadogAPIClient::V2::LLMObsDeleteExperimentsDataRequest.new({
    attributes: DatadogAPIClient::V2::LLMObsDeleteExperimentsDataAttributesRequest.new({
      experiment_ids: [
        "3fd6b5e0-8910-4b1c-a7d0-5b84de329012",
      ],
    }),
    type: DatadogAPIClient::V2::LLMObsExperimentType::EXPERIMENTS,
  }),
})
api_instance.delete_llm_obs_experiments(body)

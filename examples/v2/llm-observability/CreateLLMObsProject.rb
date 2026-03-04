# Create an LLM Observability project returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_llm_obs_project".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsProjectRequest.new({
  data: DatadogAPIClient::V2::LLMObsProjectDataRequest.new({
    attributes: DatadogAPIClient::V2::LLMObsProjectDataAttributesRequest.new({
      name: "My LLM Project",
    }),
    type: DatadogAPIClient::V2::LLMObsProjectType::PROJECTS,
  }),
})
p api_instance.create_llm_obs_project(body)

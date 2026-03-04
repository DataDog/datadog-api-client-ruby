# Update an LLM Observability project returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_llm_obs_project".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsProjectUpdateRequest.new({
  data: DatadogAPIClient::V2::LLMObsProjectUpdateDataRequest.new({
    attributes: DatadogAPIClient::V2::LLMObsProjectUpdateDataAttributesRequest.new({}),
    type: DatadogAPIClient::V2::LLMObsProjectType::PROJECTS,
  }),
})
p api_instance.update_llm_obs_project("project_id", body)

# Delete LLM Observability projects returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_llm_obs_projects".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsDeleteProjectsRequest.new({
  data: DatadogAPIClient::V2::LLMObsDeleteProjectsDataRequest.new({
    attributes: DatadogAPIClient::V2::LLMObsDeleteProjectsDataAttributesRequest.new({
      project_ids: [
        "a33671aa-24fd-4dcd-9b33-a8ec7dde7751",
      ],
    }),
    type: DatadogAPIClient::V2::LLMObsProjectType::PROJECTS,
  }),
})
api_instance.delete_llm_obs_projects(body)

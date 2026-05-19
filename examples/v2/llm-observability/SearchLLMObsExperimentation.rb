# Search LLM Observability experimentation entities returns "Partial Content — more results are available. Use
# `meta.after` as the next `page.cursor`." response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.search_llm_obs_experimentation".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsExperimentationSearchRequest.new({
  data: DatadogAPIClient::V2::LLMObsExperimentationSearchDataRequest.new({
    attributes: DatadogAPIClient::V2::LLMObsExperimentationSearchDataAttributesRequest.new({
      content_preview: DatadogAPIClient::V2::LLMObsExperimentationContentPreview.new({
        limit: 500,
      }),
      filter: DatadogAPIClient::V2::LLMObsExperimentationFilter.new({
        include_deleted: false,
        is_deleted: false,
        query: "my experiment",
        scope: [
          "experiments",
        ],
        version: nil,
      }),
      include: DatadogAPIClient::V2::LLMObsExperimentationInclude.new({
        user_data: false,
      }),
      page: DatadogAPIClient::V2::LLMObsExperimentationCursorPage.new({
        limit: 100,
      }),
    }),
    type: DatadogAPIClient::V2::LLMObsExperimentationType::EXPERIMENTATION,
  }),
})
p api_instance.search_llm_obs_experimentation(body)

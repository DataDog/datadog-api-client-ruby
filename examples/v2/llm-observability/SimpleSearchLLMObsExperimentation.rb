# Simple search experimentation entities returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.simple_search_llm_obs_experimentation".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsExperimentationSimpleSearchRequest.new({
  data: DatadogAPIClient::V2::LLMObsExperimentationSimpleSearchDataRequest.new({
    attributes: DatadogAPIClient::V2::LLMObsExperimentationSimpleSearchDataAttributesRequest.new({
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
      page: DatadogAPIClient::V2::LLMObsExperimentationNumberPage.new({
        limit: 50,
        number: 1,
      }),
      sort: [
        DatadogAPIClient::V2::LLMObsExperimentationSortField.new({
          direction: DatadogAPIClient::V2::LLMObsExperimentationSortFieldDirection::DESC,
          field: "created_at",
        }),
      ],
    }),
    type: DatadogAPIClient::V2::LLMObsExperimentationType::EXPERIMENTATION,
  }),
})
p api_instance.simple_search_llm_obs_experimentation(body)

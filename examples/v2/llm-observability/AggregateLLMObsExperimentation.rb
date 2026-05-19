# Aggregate LLM Observability experimentation returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.aggregate_llm_obs_experimentation".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsExperimentationAnalyticsRequest.new({
  data: DatadogAPIClient::V2::LLMObsExperimentationAnalyticsDataRequest.new({
    attributes: DatadogAPIClient::V2::LLMObsExperimentationAnalyticsDataAttributesRequest.new({
      aggregate: DatadogAPIClient::V2::LLMObsExperimentationAnalyticsAggregate.new({
        compute: [
          DatadogAPIClient::V2::LLMObsExperimentationAnalyticsCompute.new({
            metric: "score_value",
            name: "avg_faithfulness",
          }),
        ],
        dataset_version: nil,
        group_by: [
          DatadogAPIClient::V2::LLMObsExperimentationAnalyticsGroupBy.new({
            field: "span_id",
          }),
        ],
        indexes: [
          "experiment-evals",
        ],
        limit: 1000,
        search: DatadogAPIClient::V2::LLMObsExperimentationAnalyticsSearch.new({
          query: "@experiment_id:3fd6b5e0-8910-4b1c-a7d0-5b84de329012",
        }),
        time: DatadogAPIClient::V2::LLMObsExperimentationAnalyticsTimeRange.new({
          from: 1705312200000,
          to: 1705315800000,
        }),
      }),
    }),
    type: DatadogAPIClient::V2::LLMObsExperimentationType::EXPERIMENTATION,
  }),
})
p api_instance.aggregate_llm_obs_experimentation(body)

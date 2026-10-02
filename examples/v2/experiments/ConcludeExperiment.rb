# Conclude experiment returns "The experiment was concluded and the winning variant was rolled out to its linked feature
# flag allocation." response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

body = DatadogAPIClient::V2::ExperimentsConcludeExperimentV2Request.new({
  data: DatadogAPIClient::V2::ExperimentsConcludeExperimentV2RequestData.new({
    attributes: DatadogAPIClient::V2::ExperimentsConcludeExperimentV2RequestDataAttributes.new({
      decision_variant_key: "treatment",
    }),
    type: DatadogAPIClient::V2::ExperimentsConcludeExperimentV2RequestDataType::CONCLUDE_EXPERIMENT_REQUEST,
  }),
})
api_instance.conclude_experiment("550e8400-e29b-41d4-a716-446655440000", body)

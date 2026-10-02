# Cancel experiment returns "The experiment was canceled and unlinked from its feature flag allocations." response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

# there is a valid "experiment" in the system
EXPERIMENT_DATA_ID = ENV["EXPERIMENT_DATA_ID"]

body = DatadogAPIClient::V2::ExperimentsCancelExperimentV2Request.new({
  data: DatadogAPIClient::V2::ExperimentsCancelExperimentV2RequestData.new({
    type: DatadogAPIClient::V2::ExperimentsCancelExperimentV2RequestDataType::CANCEL_EXPERIMENT_REQUEST,
    attributes: DatadogAPIClient::V2::ExperimentsCancelExperimentV2RequestDataAttributes.new({
      reason: "Cancel the test experiment",
    }),
  }),
})
api_instance.cancel_experiment(EXPERIMENT_DATA_ID, body)

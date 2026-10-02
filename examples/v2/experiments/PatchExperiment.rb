# Patch experiment returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

# there is a valid "experiment" in the system
EXPERIMENT_DATA_ID = ENV["EXPERIMENT_DATA_ID"]

body = DatadogAPIClient::V2::ExperimentsPatchExperimentV2Request.new({
  data: DatadogAPIClient::V2::ExperimentsPatchExperimentV2RequestData.new({
    type: DatadogAPIClient::V2::ExperimentsPatchExperimentV2ResponseDataType::EXPERIMENTS,
    attributes: DatadogAPIClient::V2::ExperimentsPatchExperimentV2RequestDataAttributes.new({
      name: "ex-14bb9543f523edde updated",
    }),
  }),
})
p api_instance.patch_experiment(EXPERIMENT_DATA_ID, body)

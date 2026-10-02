# Update experiment metric group returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

# there is a valid "experiment" in the system
EXPERIMENT_DATA_ID = ENV["EXPERIMENT_DATA_ID"]

# there is a valid "experiment_metric_group" in the system
EXPERIMENT_METRIC_GROUP_DATA_ID = ENV["EXPERIMENT_METRIC_GROUP_DATA_ID"]

body = DatadogAPIClient::V2::ExperimentsPatchExperimentMetricGroupV2Request.new({
  data: DatadogAPIClient::V2::ExperimentsPatchExperimentMetricGroupV2RequestData.new({
    type: DatadogAPIClient::V2::ExperimentsPatchExperimentMetricGroupV2RequestDataType::EXPERIMENT_METRIC_GROUPS,
    id: EXPERIMENT_METRIC_GROUP_DATA_ID,
    attributes: DatadogAPIClient::V2::ExperimentsPatchExperimentMetricGroupV2RequestDataAttributes.new({
      name: "ex-14bb9543f523edde updated",
    }),
  }),
})
p api_instance.update_experiment_metric_group(EXPERIMENT_DATA_ID, EXPERIMENT_METRIC_GROUP_DATA_ID, body)

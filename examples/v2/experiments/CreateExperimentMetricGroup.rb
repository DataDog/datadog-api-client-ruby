# Create experiment metric group returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

# there is a valid "experiment" in the system
EXPERIMENT_DATA_ID = ENV["EXPERIMENT_DATA_ID"]

# there is a valid "experiment_metric" in the system
EXPERIMENT_METRIC_DATA_ID = ENV["EXPERIMENT_METRIC_DATA_ID"]

body = DatadogAPIClient::V2::ExperimentsCreateExperimentMetricGroupV2Request.new({
  data: DatadogAPIClient::V2::ExperimentsCreateExperimentMetricGroupV2RequestData.new({
    type: DatadogAPIClient::V2::ExperimentsPatchExperimentMetricGroupV2RequestDataType::EXPERIMENT_METRIC_GROUPS,
    attributes: DatadogAPIClient::V2::ExperimentsCreateExperimentMetricGroupV2RequestDataAttributes.new({
      name: "ex-14bb9543f523edde",
      metrics: [
        DatadogAPIClient::V2::ExperimentsCreateExperimentMetricGroupV2RequestDataAttributesMetricsItems.new({
          metric_id: EXPERIMENT_METRIC_DATA_ID,
        }),
      ],
    }),
  }),
})
p api_instance.create_experiment_metric_group(EXPERIMENT_DATA_ID, body)

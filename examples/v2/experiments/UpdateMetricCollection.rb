# Update metric collection returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

# there is a valid "experiment_metric_collection" in the system
EXPERIMENT_METRIC_COLLECTION_DATA_ID = ENV["EXPERIMENT_METRIC_COLLECTION_DATA_ID"]

body = DatadogAPIClient::V2::ExperimentsPatchMetricCollectionV2Request.new({
  data: DatadogAPIClient::V2::ExperimentsPatchMetricCollectionV2RequestData.new({
    type: DatadogAPIClient::V2::ExperimentsPatchMetricCollectionV2RequestDataType::METRIC_COLLECTIONS,
    attributes: DatadogAPIClient::V2::ExperimentsPatchMetricCollectionV2RequestDataAttributes.new({
      name: "ex-14bb9543f523edde updated",
    }),
  }),
})
p api_instance.update_metric_collection(EXPERIMENT_METRIC_COLLECTION_DATA_ID, body)

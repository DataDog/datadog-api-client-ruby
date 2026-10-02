# Create experiment metric group from collection returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

# there is a valid "experiment" in the system
EXPERIMENT_DATA_ID = ENV["EXPERIMENT_DATA_ID"]

# there is a valid "experiment_metric_collection_with_metric" in the system
EXPERIMENT_METRIC_COLLECTION_WITH_METRIC_DATA_ID = ENV["EXPERIMENT_METRIC_COLLECTION_WITH_METRIC_DATA_ID"]
p api_instance.create_experiment_metric_group_from_collection(EXPERIMENT_DATA_ID, EXPERIMENT_METRIC_COLLECTION_WITH_METRIC_DATA_ID)

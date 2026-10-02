# Delete experiment metric group returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

# there is a valid "experiment" in the system
EXPERIMENT_DATA_ID = ENV["EXPERIMENT_DATA_ID"]

# there is a valid "experiment_metric_group" in the system
EXPERIMENT_METRIC_GROUP_DATA_ID = ENV["EXPERIMENT_METRIC_GROUP_DATA_ID"]
api_instance.delete_experiment_metric_group(EXPERIMENT_DATA_ID, EXPERIMENT_METRIC_GROUP_DATA_ID)

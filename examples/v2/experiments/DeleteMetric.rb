# Delete metric returns "The metric was deleted." response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

# there is a valid "experiment_metric" in the system
EXPERIMENT_METRIC_DATA_ID = ENV["EXPERIMENT_METRIC_DATA_ID"]
api_instance.delete_metric(EXPERIMENT_METRIC_DATA_ID)

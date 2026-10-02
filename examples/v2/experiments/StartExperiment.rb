# Start experiment returns "The experiment was started." response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

# there is a valid "configured_experiment" in the system
CONFIGURED_EXPERIMENT_DATA_ID = ENV["CONFIGURED_EXPERIMENT_DATA_ID"]
api_instance.start_experiment(CONFIGURED_EXPERIMENT_DATA_ID)

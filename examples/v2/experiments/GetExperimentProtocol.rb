# Get experiment protocol returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

# there is a valid "experiment_protocol" in the system
EXPERIMENT_PROTOCOL_DATA_ID = ENV["EXPERIMENT_PROTOCOL_DATA_ID"]
p api_instance.get_experiment_protocol(EXPERIMENT_PROTOCOL_DATA_ID)

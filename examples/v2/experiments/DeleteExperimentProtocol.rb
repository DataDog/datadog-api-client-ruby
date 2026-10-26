# Delete experiment protocol returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

# there is a valid "experiment_protocol" in the system
EXPERIMENT_PROTOCOL_DATA_ATTRIBUTES_UPDATED_AT = ENV["EXPERIMENT_PROTOCOL_DATA_ATTRIBUTES_UPDATED_AT"]
EXPERIMENT_PROTOCOL_DATA_ID = ENV["EXPERIMENT_PROTOCOL_DATA_ID"]
opts = {
  expected_updated_at: EXPERIMENT_PROTOCOL_DATA_ATTRIBUTES_UPDATED_AT,
}
api_instance.delete_experiment_protocol(EXPERIMENT_PROTOCOL_DATA_ID, opts)

# Update experiment protocol returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

# there is a valid "experiment_protocol" in the system
EXPERIMENT_PROTOCOL_DATA_ID = ENV["EXPERIMENT_PROTOCOL_DATA_ID"]

body = DatadogAPIClient::V2::ExperimentsPatchExperimentProtocolRequest.new({
  data: DatadogAPIClient::V2::ExperimentsPatchExperimentProtocolRequestData.new({
    type: DatadogAPIClient::V2::ExperimentsPublicProtocolResponseDataType::PROTOCOLS,
    id: EXPERIMENT_PROTOCOL_DATA_ID,
    attributes: DatadogAPIClient::V2::ExperimentsPatchExperimentProtocolRequestDataAttributes.new({
      description: "Updated protocol description.",
    }),
  }),
})
p api_instance.patch_experiment_protocol(EXPERIMENT_PROTOCOL_DATA_ID, body)

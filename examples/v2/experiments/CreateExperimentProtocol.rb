# Create experiment protocol returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

body = DatadogAPIClient::V2::ExperimentsCreateExperimentProtocolRequest.new({
  data: DatadogAPIClient::V2::ExperimentsCreateExperimentProtocolRequestData.new({
    type: DatadogAPIClient::V2::ExperimentsPublicProtocolResponseDataType::PROTOCOLS,
    attributes: DatadogAPIClient::V2::ExperimentsCreateExperimentProtocolRequestDataAttributes.new({
      name: "ex-protocol-14bb9543f523edde",
      description: "Protocol created by the API test.",
    }),
  }),
})
p api_instance.create_experiment_protocol(body)

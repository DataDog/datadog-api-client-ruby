# Create experiment returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

body = DatadogAPIClient::V2::ExperimentsCreateExperimentV2Request.new({
  data: DatadogAPIClient::V2::ExperimentsCreateExperimentV2RequestData.new({
    type: DatadogAPIClient::V2::ExperimentsPatchExperimentV2ResponseDataType::EXPERIMENTS,
    attributes: DatadogAPIClient::V2::ExperimentsCreateExperimentV2RequestDataAttributes.new({
      name: "ex-14bb9543f523edde",
    }),
  }),
})
p api_instance.create_experiment(body)

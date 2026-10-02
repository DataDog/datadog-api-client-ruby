# Update experiment analysis plan attributes returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

# there is a valid "experiment" in the system
EXPERIMENT_DATA_ID = ENV["EXPERIMENT_DATA_ID"]

body = DatadogAPIClient::V2::ExperimentsAnalysisPlanWriteV2Request.new({
  data: DatadogAPIClient::V2::ExperimentsAnalysisPlanWriteV2RequestData.new({
    type: DatadogAPIClient::V2::ExperimentsAnalysisPlanWriteV2RequestDataType::ANALYSIS_PLANS,
    id: EXPERIMENT_DATA_ID,
    attributes: DatadogAPIClient::V2::ExperimentsAnalysisPlanWriteV2RequestDataAttributes.new({
      confidence_level: 0.9,
    }),
  }),
})
p api_instance.update_experiment_analysis_plan_attributes(EXPERIMENT_DATA_ID, body)

# Stop bandit returns "The bandit is stopped and serves the chosen variant." response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.stop_bandit".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

body = DatadogAPIClient::V2::ExperimentsStopBanditV2Request.new({
  data: DatadogAPIClient::V2::ExperimentsStopBanditV2RequestData.new({
    attributes: DatadogAPIClient::V2::ExperimentsStopBanditV2RequestDataAttributes.new({
      served_variant_key: "green",
    }),
    type: DatadogAPIClient::V2::ExperimentsStopBanditV2RequestDataType::STOP_BANDIT_REQUEST,
  }),
})
api_instance.stop_bandit("4b1f3c2e-8d5a-4f6b-9c7e-1a2b3c4d5e6f", body)

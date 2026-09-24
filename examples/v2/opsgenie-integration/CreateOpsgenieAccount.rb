# Create a new Opsgenie account returns "CREATED" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::OpsgenieIntegrationAPI.new

body = DatadogAPIClient::V2::OpsgenieAccountCreateRequest.new({
  data: DatadogAPIClient::V2::OpsgenieAccountCreateData.new({
    attributes: DatadogAPIClient::V2::OpsgenieAccountCreateAttributes.new({
      api_key: "00000000-0000-0000-0000-000000000000",
      region: DatadogAPIClient::V2::OpsgenieServiceRegionType::US,
    }),
    type: DatadogAPIClient::V2::OpsgenieAccountType::OPSGENIE_ACCOUNT,
  }),
})
p api_instance.create_opsgenie_account(body)

# Add Fastly account returns "CREATED" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FastlyIntegrationAPI.new

body = DatadogAPIClient::V2::FastlyAccountCreateRequest.new({
  data: DatadogAPIClient::V2::FastlyAccountCreateRequestData.new({
    attributes: DatadogAPIClient::V2::FastlyAccountCreateRequestAttributes.new({
      api_key: "ExampleFastlyIntegration",
      name: "Example-Fastly-Integration",
      services: [],
    }),
    type: DatadogAPIClient::V2::FastlyAccountType::FASTLY_ACCOUNTS,
  }),
})
p api_instance.create_fastly_account(body)

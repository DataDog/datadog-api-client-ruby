# Add Okta account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OktaIntegrationAPI.new

body = DatadogAPIClient::V2::OktaAccountRequest.new({
  data: DatadogAPIClient::V2::OktaAccount.new({
    attributes: DatadogAPIClient::V2::OktaAccountAttributes.new({
      auth_method: "oauth",
      domain: "https://example.okta.com/",
      name: "exampleoktaintegration",
      client_id: "client_id",
      client_secret: "client_secret",
    }),
    id: "f749daaf-682e-4208-a38d-c9b43162c609",
    type: DatadogAPIClient::V2::OktaAccountType::OKTA_ACCOUNTS,
  }),
})
p api_instance.create_okta_account(body)

# Update Okta account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OktaIntegrationAPI.new

# there is a valid "okta_account" in the system
OKTA_ACCOUNT_DATA_ID = ENV["OKTA_ACCOUNT_DATA_ID"]

body = DatadogAPIClient::V2::OktaAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::OktaAccountUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::OktaAccountUpdateRequestAttributes.new({
      auth_method: "oauth",
      domain: "https://example.okta.com/",
      client_id: "client_id",
      client_secret: "client_secret",
    }),
    type: DatadogAPIClient::V2::OktaAccountType::OKTA_ACCOUNTS,
  }),
})
p api_instance.update_okta_account(OKTA_ACCOUNT_DATA_ID, body)

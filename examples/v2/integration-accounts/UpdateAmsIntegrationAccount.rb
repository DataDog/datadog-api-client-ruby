# Update integration account returns "OK: The account was successfully updated." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::IntegrationAccountsAPI.new

body = DatadogAPIClient::V2::AmsIntegrationAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::AmsIntegrationAccountUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::AmsIntegrationAccountUpdateRequestAttributes.new({
      name: "My Production Account (Updated)",
      secrets: {
        "api_key_token": "new_secret_token_value",
      },
      settings: {
        "ccm_enabled": "True", "events": "True", "messages": "False",
      },
    }),
    type: DatadogAPIClient::V2::AmsIntegrationAccountType::ACCOUNT,
  }),
})
p api_instance.update_ams_integration_account("integration_name", "interface_id", "account_id", body)

# Update integration account returns "OK: The account was successfully updated." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WebIntegrationsAPI.new

body = DatadogAPIClient::V2::WebIntegrationAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::WebIntegrationAccountUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::WebIntegrationAccountUpdateRequestAttributes.new({
      name: "My Production Account (Updated)",
      secrets: {
        "api_key_token": "new_secret_token_value",
      },
      settings: {
        "ccm_enabled": "True", "events": "True", "messages": "False",
      },
    }),
    type: DatadogAPIClient::V2::WebIntegrationAccountType::ACCOUNT,
  }),
})
p api_instance.update_web_integration_account("integration_name", "account_id", body)

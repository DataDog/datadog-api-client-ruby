# Create integration account returns "Created: The account was successfully created." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WebIntegrationsAPI.new

body = DatadogAPIClient::V2::WebIntegrationAccountCreateRequest.new({
  data: DatadogAPIClient::V2::WebIntegrationAccountCreateRequestData.new({
    attributes: DatadogAPIClient::V2::WebIntegrationAccountCreateRequestAttributes.new({
      name: "My Production Account",
      secrets: {
        "api_key_token": "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
      },
      settings: {
        "account_sid": "ACxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx", "alerts": "True", "api_key": "SKxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx", "call_summaries": "True", "ccm_enabled": "True", "censor_logs": "True", "events": "True", "messages": "True",
      },
    }),
    type: DatadogAPIClient::V2::WebIntegrationAccountType::ACCOUNT,
  }),
})
p api_instance.create_web_integration_account("integration_name", body)

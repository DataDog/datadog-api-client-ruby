# Create integration account returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WebIntegrationsAPI.new

body = DatadogAPIClient::V2::WebIntegrationAccountCreateRequest.new({
  data: DatadogAPIClient::V2::WebIntegrationAccountCreateRequestData.new({
    type: DatadogAPIClient::V2::WebIntegrationAccountType::ACCOUNT,
    attributes: DatadogAPIClient::V2::WebIntegrationAccountCreateRequestAttributes.new({
      name: "Example-Web-Integration",
      settings: {
        "api_key": "SKxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx", "account_sid": "ACxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx", "events": "True", "messages": "True", "alerts": "True", "call_summaries": "True", "ccm_enabled": "True", "censor_logs": "True",
      },
      secrets: {
        "api_key_token": "test_secret_token",
      },
    }),
  }),
})
p api_instance.create_web_integration_account("twilio", body)

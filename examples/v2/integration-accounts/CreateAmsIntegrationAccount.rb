# Create integration account returns "Created: The account was successfully created." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::IntegrationAccountsAPI.new

body = DatadogAPIClient::V2::AmsIntegrationAccountCreateRequest.new({
  data: DatadogAPIClient::V2::AmsIntegrationAccountCreateRequestData.new({
    attributes: DatadogAPIClient::V2::AmsIntegrationAccountCreateRequestAttributes.new({
      name: "My Production Account",
      secrets: {
        "api_key_token": "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
      },
      settings: {
        "account_sid": "ACxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx", "alerts": "True", "api_key": "SKxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx", "call_summaries": "True", "ccm_enabled": "True", "censor_logs": "True", "events": "True", "messages": "True",
      },
    }),
    type: DatadogAPIClient::V2::AmsIntegrationAccountType::ACCOUNT,
  }),
})
p api_instance.create_ams_integration_account("integration_name", "interface_id", body)

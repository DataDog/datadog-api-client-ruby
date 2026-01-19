# Update integration account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WebIntegrationsAPI.new

# there is a valid "web_integration_account" in the system
WEB_INTEGRATION_ACCOUNT_DATA_ID = ENV["WEB_INTEGRATION_ACCOUNT_DATA_ID"]

body = DatadogAPIClient::V2::WebIntegrationAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::WebIntegrationAccountUpdateRequestData.new({
    type: DatadogAPIClient::V2::WebIntegrationAccountType::ACCOUNT,
    attributes: DatadogAPIClient::V2::WebIntegrationAccountUpdateRequestAttributes.new({
      name: "Example-Web-Integration-updated",
      settings: {
        "events": "False", "messages": "False", "ccm_enabled": "False",
      },
    }),
  }),
})
p api_instance.update_web_integration_account("twilio", WEB_INTEGRATION_ACCOUNT_DATA_ID, body)

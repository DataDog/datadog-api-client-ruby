# Update a web integration account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WebIntegrationsAPI.new

body = DatadogAPIClient::V2::WebIntegrationAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::WebIntegrationAccountUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::WebIntegrationAccountUpdateRequestAttributes.new({
      name: "my-databricks-account",
      secrets: DatadogAPIClient::V2::WebIntegrationAccountSecrets.new({}),
      settings: DatadogAPIClient::V2::WebIntegrationAccountSettings.new({}),
    }),
    type: DatadogAPIClient::V2::WebIntegrationAccountType::ACCOUNT,
  }),
})
p api_instance.update_web_integration_account("integration_name", "account_id", body)

# Create a web integration account returns "CREATED" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WebIntegrationsAPI.new

body = DatadogAPIClient::V2::WebIntegrationAccountCreateRequest.new({
  data: DatadogAPIClient::V2::WebIntegrationAccountCreateRequestData.new({
    attributes: DatadogAPIClient::V2::WebIntegrationAccountCreateRequestAttributes.new({
      name: "my-databricks-account",
      secrets: DatadogAPIClient::V2::WebIntegrationAccountSecrets.new({}),
      settings: DatadogAPIClient::V2::WebIntegrationAccountSettings.new({}),
    }),
    type: DatadogAPIClient::V2::WebIntegrationAccountType::ACCOUNT,
  }),
})
p api_instance.create_web_integration_account("integration_name", body)

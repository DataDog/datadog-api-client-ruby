# Create or update entity integration configuration returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_entity_integration_config".to_sym] = true
end
api_instance = DatadogAPIClient::V2::EntityIntegrationConfigsAPI.new

body = DatadogAPIClient::V2::EntityIntegrationConfigRequest.new({
  data: DatadogAPIClient::V2::EntityIntegrationConfigRequestData.new({
    attributes: DatadogAPIClient::V2::EntityIntegrationConfigRequestAttributes.new({
      config: DatadogAPIClient::V2::EntityIntegrationConfigPayload.new({}),
    }),
    type: DatadogAPIClient::V2::EntityIntegrationConfigRequestType::ENTITY_INTEGRATION_CONFIG_REQUESTS,
  }),
})
p api_instance.update_entity_integration_config("github", body)

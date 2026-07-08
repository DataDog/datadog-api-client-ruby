# Activate an entity context sync integration returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.activate_integration".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringIntegrationActivateRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringIntegrationActivateData.new({
    attributes: DatadogAPIClient::V2::SecurityMonitoringIntegrationActivateAttributes.new({
      domain: "default",
      name: "My Entra ID Integration",
      settings: DatadogAPIClient::V2::SecurityMonitoringIntegrationConfigSettings.new({}),
    }),
    type: DatadogAPIClient::V2::SecurityMonitoringIntegrationActivateResourceType::ACTIVATE_ENTRA_ID_REQUEST,
  }),
})
opts = {
  body: body,
}
p api_instance.activate_integration("entra_id", opts)

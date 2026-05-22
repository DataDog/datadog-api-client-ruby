# Delete an entity integration configuration returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_entity_integration_config".to_sym] = true
end
api_instance = DatadogAPIClient::V2::EntityIntegrationConfigsAPI.new
api_instance.delete_entity_integration_config("github")

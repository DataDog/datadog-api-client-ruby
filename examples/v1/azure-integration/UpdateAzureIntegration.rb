# Update an Azure integration returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::AzureIntegrationAPI.new

body = DatadogAPIClient::V1::AzureAccount.new({
  app_service_plan_filters: "key:value,filter:example",
  automute: true,
  client_id: "9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d",
  client_secret: "TestingRh2nx664kUy5dIApvM54T4AtO",
  container_app_filters: "key:value,filter:example",
  cspm_enabled: true,
  custom_metrics_enabled: true,
  errors: [
    "*",
  ],
  host_filters: "key:value,filter:example",
  new_client_id: "9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d",
  new_tenant_name: "9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d",
  resource_collection_enabled: true,
  tenant_name: "9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d",
})
p api_instance.update_azure_integration(body)

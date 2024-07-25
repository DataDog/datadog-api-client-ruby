# Update Azure integration host filters returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::AzureIntegrationAPI.new

body = DatadogAPIClient::V1::AzureAccount.new({
  app_service_plan_filters: "key:value,filter:example",
  automute: true,
  client_id: "testc7f6-1234-5678-9101-3fcbf464test",
  client_secret: "TestingRh2nx664kUy5dIApvM54T4AtO",
  container_app_filters: "key:value,filter:example",
  cspm_enabled: true,
  custom_metrics_enabled: true,
  errors: [
    "*",
  ],
  host_filters: "key:value,filter:example",
  metrics_config: DatadogAPIClient::V1::AzureAccountMetricsConfig.new({
    excluded_resource_providers: [
      "Microsoft.Sql",
      "Microsoft.Cdn",
    ],
  }),
  new_client_id: "new1c7f6-1234-5678-9101-3fcbf464test",
  new_tenant_name: "new1c44-1234-5678-9101-cc00736ftest",
  resource_collection_enabled: true,
  tenant_name: "testc44-1234-5678-9101-cc00736ftest",
})
p api_instance.update_azure_host_filters(body)

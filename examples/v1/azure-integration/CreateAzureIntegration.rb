# Create an Azure integration returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::AzureIntegrationAPI.new

body = DatadogAPIClient::V1::AzureAccount.new({
  app_service_plan_filters: "key:value,filter:example",
  automute: true,
  client_id: "testc7f6-1234-5678-9101-3fcbf464test",
  client_secret: "testingx./Sw*g/Y33t..R1cH+hScMDt",
  container_app_filters: "key:value,filter:example",
  cspm_enabled: true,
  custom_metrics_enabled: true,
  errors: [
    "*",
  ],
  host_filters: "key:value,filter:example",
  new_client_id: "new1c7f6-1234-5678-9101-3fcbf464test",
  new_tenant_name: "new1c44-1234-5678-9101-cc00736ftest",
  tenant_name: "testc44-1234-5678-9101-cc00736ftest",
})
p api_instance.create_azure_integration(body)

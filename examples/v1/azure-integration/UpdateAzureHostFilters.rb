# Update Azure integration host filters returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::AzureIntegrationAPI.new

body = DatadogAPIClient::V1::AzureAccount.new({
  automute: true,
  client_id: "testc7f6-1234-5678-9101-3fcbf464test",
  client_secret: "testingx./Sw*g/Y33t..R1cH+hScMDt",
  errors: [
    "*",
  ],
  host_filters: "key:value,filter:example",
  new_client_id: "new1c7f6-1234-5678-9101-3fcbf464test",
  new_tenant_name: "new1c44-1234-5678-9101-cc00736ftest",
  tenant_name: "testc44-1234-5678-9101-cc00736ftest",
})
p api_instance.update_azure_host_filters(body)

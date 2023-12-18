# Delete an Azure integration returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::AzureIntegrationAPI.new

body = DatadogAPIClient::V1::AzureAccount.new({
  client_id: "9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d",
  tenant_name: "9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d",
})
p api_instance.delete_azure_integration(body)

# Update Cloud Cost Management Azure config returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = DatadogAPIClient::V2::AzureUCConfigPatchRequest.new({
  data: DatadogAPIClient::V2::AzureUCConfigPatchData.new({
    attributes: DatadogAPIClient::V2::AzureUCConfigPatchRequestAttributes.new({
      is_enabled: true,
    }),
    type: DatadogAPIClient::V2::AzureUCConfigPatchRequestType::AZURE_UC_CONFIG_PATCH_REQUEST,
  }),
})
p api_instance.update_cost_azure_uc_configs("100", body)

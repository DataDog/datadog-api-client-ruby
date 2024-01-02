# Create Cloud Cost Management Azure configs returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = DatadogAPIClient::V2::AzureUCConfigPostRequest.new({
  data: DatadogAPIClient::V2::AzureUCConfigPostData.new({
    attributes: DatadogAPIClient::V2::AzureUCConfigPostRequestAttributes.new({
      account_id: "1234abcd-1234-abcd-1234-1234abcd1234",
      actual_bill_config: DatadogAPIClient::V2::BillConfig.new({
        export_name: "dd-actual-export",
        export_path: "dd-export-path",
        storage_account: "dd-storage-account",
        storage_container: "dd-storage-container",
      }),
      amortized_bill_config: DatadogAPIClient::V2::BillConfig.new({
        export_name: "dd-actual-export",
        export_path: "dd-export-path",
        storage_account: "dd-storage-account",
        storage_container: "dd-storage-container",
      }),
      client_id: "1234abcd-1234-abcd-1234-1234abcd1234",
      is_enabled: true,
      scope: "subscriptions/1234abcd-1234-abcd-1234-1234abcd1234",
    }),
    type: DatadogAPIClient::V2::AzureUCConfigPostRequestType::AZURE_UC_CONFIG_POST_REQUEST,
  }),
})
p api_instance.create_cost_azure_uc_configs(body)

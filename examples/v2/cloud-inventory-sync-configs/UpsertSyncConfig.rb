# Create or update a sync configuration returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.upsert_sync_config".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudInventorySyncConfigsAPI.new

body = DatadogAPIClient::V2::UpsertCloudInventorySyncConfigRequest.new({
  data: DatadogAPIClient::V2::UpsertCloudInventorySyncConfigRequestData.new({
    attributes: DatadogAPIClient::V2::UpsertCloudInventorySyncConfigRequestAttributes.new({
      aws: DatadogAPIClient::V2::CloudInventorySyncConfigAWSRequestAttributes.new({
        aws_account_id: "123456789012",
        destination_bucket_name: "my-inventory-bucket",
        destination_bucket_region: "us-east-1",
        destination_prefix: "logs/",
      }),
      azure: DatadogAPIClient::V2::CloudInventorySyncConfigAzureRequestAttributes.new({
        client_id: "11111111-1111-1111-1111-111111111111",
        container: "inventory-container",
        resource_group: "my-resource-group",
        storage_account: "mystorageaccount",
        subscription_id: "33333333-3333-3333-3333-333333333333",
        tenant_id: "22222222-2222-2222-2222-222222222222",
      }),
      gcp: DatadogAPIClient::V2::CloudInventorySyncConfigGCPRequestAttributes.new({
        destination_bucket_name: "my-inventory-reports",
        project_id: "my-gcp-project",
        service_account_email: "reader@my-gcp-project.iam.gserviceaccount.com",
        source_bucket_name: "my-monitored-bucket",
      }),
    }),
    id: DatadogAPIClient::V2::CloudInventoryCloudProviderId::AWS,
    type: DatadogAPIClient::V2::CloudInventoryCloudProviderRequestType::CLOUD_PROVIDER,
  }),
})
p api_instance.upsert_sync_config(body)

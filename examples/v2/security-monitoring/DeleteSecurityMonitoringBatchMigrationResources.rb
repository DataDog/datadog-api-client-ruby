# Delete resources from a batch migration returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.delete_security_monitoring_batch_migration_resources".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "batch_migration" in the system
BATCH_MIGRATION_DATA_ID = ENV["BATCH_MIGRATION_DATA_ID"]

# there is a valid "batch_migration_resource" in the system
BATCH_MIGRATION_RESOURCE_ID = ENV["BATCH_MIGRATION_RESOURCE_ID"]

body = DatadogAPIClient::V2::SecurityMonitoringBatchMigrationResourcesDeleteRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringBatchMigrationResourcesDeleteData.new({
    type: DatadogAPIClient::V2::SecurityMonitoringBatchMigrationResourcesType::BATCH_MIGRATION_RESOURCES,
    attributes: DatadogAPIClient::V2::SecurityMonitoringBatchMigrationResourcesDeleteAttributes.new({
      resource_ids: [
        BATCH_MIGRATION_RESOURCE_ID,
      ],
    }),
  }),
})
api_instance.delete_security_monitoring_batch_migration_resources(BATCH_MIGRATION_DATA_ID, body)

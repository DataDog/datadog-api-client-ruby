# Update a batch migration resource returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_security_monitoring_batch_migration_resource".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "batch_migration" in the system
BATCH_MIGRATION_DATA_ID = ENV["BATCH_MIGRATION_DATA_ID"]

# there is a valid "batch_migration_resource" in the system
BATCH_MIGRATION_RESOURCE_ID = ENV["BATCH_MIGRATION_RESOURCE_ID"]

body = DatadogAPIClient::V2::SecurityMonitoringBatchMigrationResourceUpdateRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringBatchMigrationResourceUpdateData.new({
    type: DatadogAPIClient::V2::SecurityMonitoringBatchMigrationResourceType::BATCH_MIGRATION_RESOURCE,
    attributes: DatadogAPIClient::V2::SecurityMonitoringBatchMigrationResourceUpdateAttributes.new({
      input: "index=wineventlog EventCode=4625 | stats count by user",
    }),
  }),
})
p api_instance.update_security_monitoring_batch_migration_resource(BATCH_MIGRATION_DATA_ID, BATCH_MIGRATION_RESOURCE_ID, body)

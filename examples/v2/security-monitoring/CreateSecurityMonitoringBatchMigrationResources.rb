# Add resources to a batch migration returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_security_monitoring_batch_migration_resources".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "batch_migration" in the system
BATCH_MIGRATION_DATA_ID = ENV["BATCH_MIGRATION_DATA_ID"]

body = DatadogAPIClient::V2::SecurityMonitoringBatchMigrationResourcesCreateRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringBatchMigrationResourcesCreateData.new({
    type: DatadogAPIClient::V2::SecurityMonitoringBatchMigrationResourcesType::BATCH_MIGRATION_RESOURCES,
    attributes: DatadogAPIClient::V2::SecurityMonitoringBatchMigrationResourcesCreateAttributes.new({
      resources: [
        DatadogAPIClient::V2::SecurityMonitoringBatchMigrationResourceCreateItem.new({
          name: "Linux sudo abuse",
          input_type: DatadogAPIClient::V2::SecurityMonitoringBatchMigrationResourceInputType::SPL,
          input: 'index=linux process=sudo "authentication failure" | stats count by user, host',
        }),
      ],
    }),
  }),
})
p api_instance.create_security_monitoring_batch_migration_resources(BATCH_MIGRATION_DATA_ID, body)

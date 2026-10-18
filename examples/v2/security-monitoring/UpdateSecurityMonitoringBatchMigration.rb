# Update a batch migration returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_security_monitoring_batch_migration".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "batch_migration" in the system
BATCH_MIGRATION_DATA_ID = ENV["BATCH_MIGRATION_DATA_ID"]

body = DatadogAPIClient::V2::SecurityMonitoringBatchMigrationUpdateRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringBatchMigrationUpdateData.new({
    type: DatadogAPIClient::V2::SecurityMonitoringBatchMigrationType::BATCH_MIGRATION,
    attributes: DatadogAPIClient::V2::SecurityMonitoringBatchMigrationUpdateAttributes.new({
      name: "Example-Security-Monitoring-updated",
      tags: [
        "source:splunk",
        "team:secops",
      ],
    }),
  }),
})
p api_instance.update_security_monitoring_batch_migration(BATCH_MIGRATION_DATA_ID, body)

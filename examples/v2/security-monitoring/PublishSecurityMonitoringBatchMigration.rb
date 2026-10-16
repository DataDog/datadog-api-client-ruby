# Publish a batch migration returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.publish_security_monitoring_batch_migration".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringBatchMigrationPublishRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringBatchMigrationPublishData.new({
    attributes: DatadogAPIClient::V2::SecurityMonitoringBatchMigrationPublishAttributes.new({
      resource_ids: [
        "c968cf83-56c2-4d54-a993-6c86dfb83527",
      ],
    }),
    type: DatadogAPIClient::V2::SecurityMonitoringBatchMigrationPublishType::BATCH_MIGRATION_PUBLISH,
  }),
})
p api_instance.publish_security_monitoring_batch_migration("7cdb3a75-64fb-46ce-9445-41969e78fe8e", body)

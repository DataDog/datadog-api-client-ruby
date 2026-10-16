# Create a batch migration returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_security_monitoring_batch_migration".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringBatchMigrationCreateRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringBatchMigrationCreateData.new({
    type: DatadogAPIClient::V2::SecurityMonitoringBatchMigrationType::BATCH_MIGRATION,
    attributes: DatadogAPIClient::V2::SecurityMonitoringBatchMigrationCreateAttributes.new({
      name: "Example-Security-Monitoring",
      description: "Rules imported from Splunk",
      tags: [
        "source:splunk",
      ],
      resources: [
        DatadogAPIClient::V2::SecurityMonitoringBatchMigrationResourceCreateItem.new({
          name: "Repeated Windows login failures",
          description: "Detects repeated failed Windows authentication attempts.",
          input_type: DatadogAPIClient::V2::SecurityMonitoringBatchMigrationResourceInputType::SPL,
          input: "index=wineventlog EventCode=4625",
        }),
      ],
    }),
  }),
})
p api_instance.create_security_monitoring_batch_migration(body)

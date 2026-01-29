# Create a dataset returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_security_monitoring_dataset".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringDatasetCreateRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringDatasetCreateDataRequest.new({
    attributes: DatadogAPIClient::V2::SecurityMonitoringDatasetCreateAttributesRequest.new({
      definition: DatadogAPIClient::V2::SecurityMonitoringDatasetDefinition.new({
        columns: [
          DatadogAPIClient::V2::SecurityMonitoringDatasetDefinitionColumn.new({
            column: "message",
            type: DatadogAPIClient::V2::SecurityMonitoringDatasetDefinitionColumnType::STRING,
          }),
        ],
        data_source: "logs",
        indexes: [
          "k9",
        ],
        name: "my_dataset",
      }),
      description: "A dataset for monitoring authentication events",
    }),
    type: DatadogAPIClient::V2::SecurityMonitoringDatasetType::SECURITY_MONITORING_DATASET,
  }),
})
p api_instance.create_security_monitoring_dataset(body)

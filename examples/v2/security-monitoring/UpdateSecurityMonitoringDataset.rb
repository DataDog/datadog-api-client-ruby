# Update a dataset returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_security_monitoring_dataset".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringDatasetUpdateRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringDatasetUpdateDataRequest.new({
    attributes: DatadogAPIClient::V2::SecurityMonitoringDatasetUpdateAttributesRequest.new({
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
      description: "Updated dataset description",
      version: 1,
    }),
    type: DatadogAPIClient::V2::SecurityMonitoringDatasetType::SECURITY_MONITORING_DATASET,
  }),
})
api_instance.update_security_monitoring_dataset("123e4567-e89b-12d3-a456-426614174000", body)

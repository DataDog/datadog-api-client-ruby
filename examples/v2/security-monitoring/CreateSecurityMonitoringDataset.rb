# Create a dataset returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_security_monitoring_dataset".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringDatasetCreateRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringDatasetCreateData.new({
    attributes: DatadogAPIClient::V2::SecurityMonitoringDatasetAttributesRequest.new({
      definition: DatadogAPIClient::V2::SecurityMonitoringDatasetDefinition.new({
        columns: [
          DatadogAPIClient::V2::SecurityMonitoringDatasetColumn.new({
            column: "message",
            type: "string",
          }),
        ],
        data_source: "logs",
        indexes: [],
        name: "sample_dataset",
        query_filter: "status = 'active'",
        search: DatadogAPIClient::V2::SecurityMonitoringDatasetSearch.new({
          query: "*",
        }),
        storage: "hot",
        table_name: "my_reference_table",
        time_window: DatadogAPIClient::V2::SecurityMonitoringDatasetTimeWindow.new({
          from: 1700000000000,
          to: 1700003600000,
        }),
      }),
      description: "A sample dataset used for detection rules.",
      version: 1,
    }),
    type: DatadogAPIClient::V2::SecurityMonitoringDatasetCreateType::DATASET_CREATE,
  }),
})
p api_instance.create_security_monitoring_dataset(body)

# Get dataset dependencies returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.batch_get_security_monitoring_dataset_dependencies".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringDatasetDependenciesRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringDatasetDependenciesDataRequest.new({
    attributes: DatadogAPIClient::V2::SecurityMonitoringDatasetDependenciesAttributesRequest.new({
      dataset_ids: [
        "dataset-1",
      ],
    }),
    type: DatadogAPIClient::V2::SecurityMonitoringDatasetDependenciesType::SECURITY_MONITORING_DATASET_DEPENDENCIES,
  }),
})
p api_instance.batch_get_security_monitoring_dataset_dependencies(body)

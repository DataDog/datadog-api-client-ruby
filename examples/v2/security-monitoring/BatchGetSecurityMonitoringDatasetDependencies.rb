# Get dataset dependencies returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.batch_get_security_monitoring_dataset_dependencies".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringDatasetDependenciesRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringDatasetDependenciesRequestData.new({
    attributes: DatadogAPIClient::V2::SecurityMonitoringDatasetDependenciesRequestAttributes.new({
      dataset_ids: [
        "123e4567-e89b-12d3-a456-426614174000",
      ],
    }),
  }),
})
p api_instance.batch_get_security_monitoring_dataset_dependencies(body)

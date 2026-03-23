# Delete Test Optimization service settings returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_test_optimization_service_settings".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TestOptimizationAPI.new

body = DatadogAPIClient::V2::TestOptimizationDeleteServiceSettingsRequest.new({
  data: DatadogAPIClient::V2::TestOptimizationDeleteServiceSettingsRequestData.new({
    attributes: DatadogAPIClient::V2::TestOptimizationDeleteServiceSettingsRequestAttributes.new({
      env: "prod",
      repository_id: "github.com/datadog/shopist",
      service_name: "shopist",
    }),
    type: DatadogAPIClient::V2::TestOptimizationDeleteServiceSettingsRequestDataType::TEST_OPTIMIZATION_DELETE_SERVICE_SETTINGS_REQUEST,
  }),
})
api_instance.delete_test_optimization_service_settings(body)

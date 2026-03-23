# Get Test Optimization service settings returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_test_optimization_service_settings".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TestOptimizationAPI.new

body = DatadogAPIClient::V2::TestOptimizationGetServiceSettingsRequest.new({
  data: DatadogAPIClient::V2::TestOptimizationGetServiceSettingsRequestData.new({
    attributes: DatadogAPIClient::V2::TestOptimizationGetServiceSettingsRequestAttributes.new({
      env: "prod",
      repository_id: "github.com/datadog/shopist",
      service_name: "shopist",
    }),
    type: DatadogAPIClient::V2::TestOptimizationGetServiceSettingsRequestDataType::TEST_OPTIMIZATION_GET_SERVICE_SETTINGS_REQUEST,
  }),
})
p api_instance.get_test_optimization_service_settings(body)

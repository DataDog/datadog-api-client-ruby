# Update Test Optimization service settings returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_test_optimization_service_settings".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TestOptimizationAPI.new

body = DatadogAPIClient::V2::TestOptimizationUpdateServiceSettingsRequest.new({
  data: DatadogAPIClient::V2::TestOptimizationUpdateServiceSettingsRequestData.new({
    attributes: DatadogAPIClient::V2::TestOptimizationUpdateServiceSettingsRequestAttributes.new({
      auto_test_retries_enabled: false,
      code_coverage_enabled: false,
      early_flake_detection_enabled: false,
      env: "prod",
      failed_test_replay_enabled: false,
      pr_comments_enabled: true,
      repository_id: "github.com/datadog/shopist",
      service_name: "shopist",
      test_impact_analysis_enabled: false,
    }),
    type: DatadogAPIClient::V2::TestOptimizationUpdateServiceSettingsRequestDataType::TEST_OPTIMIZATION_UPDATE_SERVICE_SETTINGS_REQUEST,
  }),
})
p api_instance.update_test_optimization_service_settings(body)

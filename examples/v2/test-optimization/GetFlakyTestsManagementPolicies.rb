# Get Flaky Tests Management policies returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_flaky_tests_management_policies".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TestOptimizationAPI.new

body = DatadogAPIClient::V2::TestOptimizationFlakyTestsManagementPoliciesGetRequest.new({
  data: DatadogAPIClient::V2::TestOptimizationFlakyTestsManagementPoliciesGetRequestData.new({
    attributes: DatadogAPIClient::V2::TestOptimizationFlakyTestsManagementPoliciesGetRequestAttributes.new({
      repository_id: "github.com/datadog/shopist",
    }),
    type: DatadogAPIClient::V2::TestOptimizationGetFlakyTestsManagementPoliciesRequestDataType::TEST_OPTIMIZATION_GET_FLAKY_TESTS_MANAGEMENT_POLICIES_REQUEST,
  }),
})
p api_instance.get_flaky_tests_management_policies(body)

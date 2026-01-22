# Update flaky test states returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_flaky_tests".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TestOptimizationAPI.new

body = DatadogAPIClient::V2::UpdateFlakyTestsRequest.new({
  data: DatadogAPIClient::V2::UpdateFlakyTestsRequestData.new({
    attributes: DatadogAPIClient::V2::UpdateFlakyTestsRequestAttributes.new({
      tests: [
        DatadogAPIClient::V2::UpdateFlakyTestsRequestTest.new({
          id: "4eb1887a8adb1847",
          new_state: DatadogAPIClient::V2::UpdateFlakyTestsRequestTestNewState::ACTIVE,
        }),
      ],
    }),
    type: DatadogAPIClient::V2::UpdateFlakyTestsRequestDataType::UPDATE_FLAKY_TEST_STATE_REQUEST,
  }),
})
p api_instance.update_flaky_tests(body)

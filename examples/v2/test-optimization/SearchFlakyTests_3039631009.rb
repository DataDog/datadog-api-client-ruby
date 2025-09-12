# Search flaky tests returns "OK" response with specific cursor

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.search_flaky_tests".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TestOptimizationAPI.new

body = DatadogAPIClient::V2::FlakyTestsSearchRequest.new({
  data: DatadogAPIClient::V2::FlakyTestsSearchRequestData.new({
    attributes: DatadogAPIClient::V2::FlakyTestsSearchRequestAttributes.new({
      filter: DatadogAPIClient::V2::FlakyTestsSearchFilter.new({
        query: "*",
      }),
      page: DatadogAPIClient::V2::FlakyTestsSearchPageOptions.new({
        cursor: "Q29udGludW91cyBUZXN0aW5nLltETyBOT1QgREVMRVRFXVtPTi1ERU1BTkQgRlVOQ1RJT05BTElUSUVTXVtPVkVSUklERV0gRXh0cmFWYXJpYWJsZXM=",
        limit: 2,
      }),
      sort: DatadogAPIClient::V2::FlakyTestsSearchSort::FQN_ASCENDING,
    }),
    type: DatadogAPIClient::V2::FlakyTestsSearchRequestDataType::SEARCH_FLAKY_TESTS_REQUEST,
  }),
})
opts = {
  body: body,
}
p api_instance.search_flaky_tests(opts)

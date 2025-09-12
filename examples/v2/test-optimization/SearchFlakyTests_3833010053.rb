# Search flaky tests returns "OK" response with cursor pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TestOptimizationAPI.new

body = DatadogAPIClient::V2::FlakyTestsSearchRequest.new({
  data: DatadogAPIClient::V2::FlakyTestsSearchRequestData.new({
    attributes: DatadogAPIClient::V2::FlakyTestsSearchRequestAttributes.new({
      filter: DatadogAPIClient::V2::FlakyTestsSearchFilter.new({
        query: "*",
      }),
      page: DatadogAPIClient::V2::FlakyTestsSearchPageOptions.new({
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
api_instance.search_flaky_tests_with_pagination(opts) { |item| puts item }

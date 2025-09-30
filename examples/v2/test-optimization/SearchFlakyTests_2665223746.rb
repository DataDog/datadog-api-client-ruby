# Search flaky tests returns "OK" response with filtered query

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.search_flaky_tests".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TestOptimizationAPI.new

body = DatadogAPIClient::V2::FlakyTestsSearchRequest.new({
  data: DatadogAPIClient::V2::FlakyTestsSearchRequestData.new({
    attributes: DatadogAPIClient::V2::FlakyTestsSearchRequestAttributes.new({
      filter: DatadogAPIClient::V2::FlakyTestsSearchFilter.new({
        query: 'flaky_test_state:active @git.repository.id_v2:"github.com/datadog/cart-tracking"',
      }),
      page: DatadogAPIClient::V2::FlakyTestsSearchPageOptions.new({
        limit: 10,
      }),
      sort: DatadogAPIClient::V2::FlakyTestsSearchSort::LAST_FLAKED_DESCENDING,
    }),
    type: DatadogAPIClient::V2::FlakyTestsSearchRequestDataType::SEARCH_FLAKY_TESTS_REQUEST,
  }),
})
opts = {
  body: body,
}
api_instance.search_flaky_tests_with_pagination(opts) { |item| puts item }

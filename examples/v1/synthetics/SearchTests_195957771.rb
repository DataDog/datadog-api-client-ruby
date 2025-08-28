# Search Synthetic tests with boolean query parameters

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
opts = {
  text: "tag:value",
  include_full_config: true,
  search_suites: true,
  facets_only: true,
  count: 5,
  sort: "name,desc",
}
p api_instance.search_tests(opts)

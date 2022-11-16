# Get a list of tests events returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CIVisibilityTestsAPI.new
opts = {
  filter_query: "@test.service:web-ui-tests",
  filter_from: (Time.now + -30),
  filter_to: Time.now,
  page_limit: 5,
}
p api_instance.list_ci_app_test_events(opts)

# Get an API test result returns result with failure object

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

# there is a "synthetics_api_test_with_wrong_dns" in the system
SYNTHETICS_API_TEST_WITH_WRONG_DNS_PUBLIC_ID = ENV["SYNTHETICS_API_TEST_WITH_WRONG_DNS_PUBLIC_ID"]

# the "synthetics_api_test_with_wrong_dns" is triggered
SYNTHETICS_API_TEST_WITH_WRONG_DNS_RESULT_RESULTS_0_RESULT_ID = ENV["SYNTHETICS_API_TEST_WITH_WRONG_DNS_RESULT_RESULTS_0_RESULT_ID"]
p api_instance.get_api_test_result(SYNTHETICS_API_TEST_WITH_WRONG_DNS_PUBLIC_ID, SYNTHETICS_API_TEST_WITH_WRONG_DNS_RESULT_RESULTS_0_RESULT_ID)

# Delete tests returns "OK." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

# there is a valid "synthetics_api_test" in the system
SYNTHETICS_API_TEST_PUBLIC_ID = ENV["SYNTHETICS_API_TEST_PUBLIC_ID"]

body = DatadogAPIClient::V1::SyntheticsDeleteTestsPayload.new({
  public_ids: [
    SYNTHETICS_API_TEST_PUBLIC_ID,
  ],
})
p api_instance.delete_tests(body)

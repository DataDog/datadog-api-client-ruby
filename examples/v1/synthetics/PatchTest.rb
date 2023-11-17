# Patch a Synthetic test returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

# there is a valid "synthetics_api_test" in the system
SYNTHETICS_API_TEST_PUBLIC_ID = ENV["SYNTHETICS_API_TEST_PUBLIC_ID"]

body = DatadogAPIClient::V1::SyntheticsPatchTestBody.new({
  data: [
    DatadogAPIClient::V1::SyntheticsPatchTestOperation.new({
      op: DatadogAPIClient::V1::SyntheticsPatchTestOperationName::REPLACE,
      path: "/name",
      value: "New test name",
    }),
    DatadogAPIClient::V1::SyntheticsPatchTestOperation.new({
      op: DatadogAPIClient::V1::SyntheticsPatchTestOperationName::REMOVE,
      path: "/config/assertions/0",
    }),
  ],
})
p api_instance.patch_test(SYNTHETICS_API_TEST_PUBLIC_ID, body)

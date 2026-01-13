# Create a multistep test with subtest returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

# there is a valid "synthetics_api_test" in the system
SYNTHETICS_API_TEST_PUBLIC_ID = ENV["SYNTHETICS_API_TEST_PUBLIC_ID"]

body = DatadogAPIClient::V1::SyntheticsAPITest.new({
  config: DatadogAPIClient::V1::SyntheticsAPITestConfig.new({
    steps: [
      DatadogAPIClient::V1::SyntheticsAPITestStep.new({
        assertions: [
          DatadogAPIClient::V1::SyntheticsAssertionTarget.new({
            operator: DatadogAPIClient::V1::SyntheticsAssertionOperator::IS,
            type: DatadogAPIClient::V1::SyntheticsAssertionType::STATUS_CODE,
            target: 200,
          }),
        ],
        name: "request is sent",
        request: DatadogAPIClient::V1::SyntheticsTestRequest.new({
          url: "https://httpbin.org/status/200",
          method: "GET",
          basic_auth: DatadogAPIClient::V1::SyntheticsBasicAuthWeb.new({
            password: "password",
            username: "username",
          }),
        }),
        subtype: DatadogAPIClient::V1::SyntheticsAPITestStepSubtype::HTTP,
      }),
      DatadogAPIClient::V1::SyntheticsAPISubtestStep.new({
        subtype: DatadogAPIClient::V1::SyntheticsAPISubtestStepSubtype::PLAY_SUB_TEST,
        subtest_public_id: SYNTHETICS_API_TEST_PUBLIC_ID,
        name: "subtest step",
      }),
    ],
  }),
  locations: [
    "aws:us-east-2",
  ],
  message: "BDD test payload: synthetics_api_test_multi_step_with_subtest.json",
  name: "Example-Synthetic",
  options: DatadogAPIClient::V1::SyntheticsTestOptions.new({
    tick_every: 60,
  }),
  subtype: DatadogAPIClient::V1::SyntheticsTestDetailsSubType::MULTI,
  type: DatadogAPIClient::V1::SyntheticsAPITestType::API,
})
p api_instance.create_synthetics_api_test(body)

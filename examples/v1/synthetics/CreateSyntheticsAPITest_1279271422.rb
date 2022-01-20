# Create an API test with multi subtype returns "OK - Returns the created test details." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

body = DatadogAPIClient::V1::SyntheticsAPITest.new({
  config: DatadogAPIClient::V1::SyntheticsAPITestConfig.new({
    config_variables: [
      DatadogAPIClient::V1::SyntheticsConfigVariable.new({
        example: "content-type",
        name: "PROPERTY",
        pattern: "content-type",
        type: DatadogAPIClient::V1::SyntheticsConfigVariableType::TEXT,
      }),
    ],
    steps: [
      DatadogAPIClient::V1::SyntheticsAPIStep.new({
        allow_failure: true,
        assertions: [
          DatadogAPIClient::V1::SyntheticsAssertionTarget.new({
            operator: DatadogAPIClient::V1::SyntheticsAssertionOperator::IS,
            type: DatadogAPIClient::V1::SyntheticsAssertionType::STATUS_CODE,
            target: 200,
          }),
        ],
        is_critical: true,
        name: "request is sent",
        request: DatadogAPIClient::V1::SyntheticsTestRequest.new({
          method: DatadogAPIClient::V1::HTTPMethod::GET,
          timeout: 10,
          url: "https://datadoghq.com",
        }),
        _retry: DatadogAPIClient::V1::SyntheticsTestOptionsRetry.new({
          count: 5,
          interval: 1000,
        }),
        subtype: DatadogAPIClient::V1::SyntheticsAPIStepSubtype::HTTP,
      }),
    ],
  }),
  locations: [
    "aws:us-east-2",
  ],
  message: "BDD test payload: synthetics_api_test_multi_step_payload.json",
  name: "Test-Example-Create_an_API_test_with_multi_subtype_returns_OK_Returns_the_created_test_details_response",
  options: DatadogAPIClient::V1::SyntheticsTestOptions.new({
    accept_self_signed: false,
    allow_insecure: true,
    follow_redirects: true,
    min_failure_duration: 10,
    min_location_failed: 1,
    monitor_name: "Test-Example-Create_an_API_test_with_multi_subtype_returns_OK_Returns_the_created_test_details_response",
    monitor_priority: 5,
    _retry: DatadogAPIClient::V1::SyntheticsTestOptionsRetry.new({
      count: 3,
      interval: 1000,
    }),
    tick_every: 60,
  }),
  subtype: DatadogAPIClient::V1::SyntheticsTestDetailsSubType::MULTI,
  tags: [
    "testing:api",
  ],
  type: DatadogAPIClient::V1::SyntheticsAPITestType::API,
})
p api_instance.create_synthetics_api_test(body)

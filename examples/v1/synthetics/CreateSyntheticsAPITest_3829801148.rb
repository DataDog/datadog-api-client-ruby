# Create an API test with UDP subtype returns "OK - Returns the created test details." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

body = DatadogAPIClient::V1::SyntheticsAPITest.new({
  config: DatadogAPIClient::V1::SyntheticsAPITestConfig.new({
    assertions: [
      DatadogAPIClient::V1::SyntheticsAssertionTarget.new({
        operator: DatadogAPIClient::V1::SyntheticsAssertionOperator::IS,
        target: "message",
        type: DatadogAPIClient::V1::SyntheticsAssertionType::RECEIVED_MESSAGE,
      }),
      DatadogAPIClient::V1::SyntheticsAssertionTarget.new({
        operator: DatadogAPIClient::V1::SyntheticsAssertionOperator::LESS_THAN,
        target: 2000,
        type: DatadogAPIClient::V1::SyntheticsAssertionType::RESPONSE_TIME,
      }),
    ],
    config_variables: [],
    request: DatadogAPIClient::V1::SyntheticsTestRequest.new({
      host: "https://datadoghq.com",
      message: "message",
      port: 443,
    }),
  }),
  locations: [
    "aws:us-east-2",
  ],
  message: "BDD test payload: synthetics_api_test_udp_payload.json",
  name: "Example-Create_an_API_test_with_UDP_subtype_returns_OK_Returns_the_created_test_details_response",
  options: DatadogAPIClient::V1::SyntheticsTestOptions.new({
    accept_self_signed: false,
    allow_insecure: true,
    follow_redirects: true,
    min_failure_duration: 10,
    min_location_failed: 1,
    monitor_name: "Example-Create_an_API_test_with_UDP_subtype_returns_OK_Returns_the_created_test_details_response",
    monitor_priority: 5,
    _retry: DatadogAPIClient::V1::SyntheticsTestOptionsRetry.new({
      count: 3,
      interval: 10,
    }),
    tick_every: 60,
  }),
  subtype: DatadogAPIClient::V1::SyntheticsTestDetailsSubType::UDP,
  tags: [
    "testing:api",
  ],
  type: DatadogAPIClient::V1::SyntheticsAPITestType::API,
})
p api_instance.create_synthetics_api_test(body)

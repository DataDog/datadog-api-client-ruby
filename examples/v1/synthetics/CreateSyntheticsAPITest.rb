# Create an API test returns "OK - Returns the created test details." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

body = DatadogAPIClient::V1::SyntheticsAPITest.new({
  config: DatadogAPIClient::V1::SyntheticsAPITestConfig.new({
    assertions: [
      DatadogAPIClient::V1::SyntheticsAssertionTarget.new({
        operator: DatadogAPIClient::V1::SyntheticsAssertionOperator::IS,
        property: "{{ PROPERTY }}",
        target: "text/html",
        type: DatadogAPIClient::V1::SyntheticsAssertionType::HEADER,
      }),
      DatadogAPIClient::V1::SyntheticsAssertionTarget.new({
        operator: DatadogAPIClient::V1::SyntheticsAssertionOperator::LESS_THAN,
        target: 2000,
        type: DatadogAPIClient::V1::SyntheticsAssertionType::RESPONSE_TIME,
      }),
      DatadogAPIClient::V1::SyntheticsAssertionJSONPathTarget.new({
        operator: DatadogAPIClient::V1::SyntheticsAssertionJSONPathOperator::VALIDATES_JSON_PATH,
        target: DatadogAPIClient::V1::SyntheticsAssertionJSONPathTargetTarget.new({
          json_path: "topKey",
          operator: "isNot",
          target_value: "0",
        }),
        type: DatadogAPIClient::V1::SyntheticsAssertionType::BODY,
      }),
    ],
    config_variables: [
      DatadogAPIClient::V1::SyntheticsConfigVariable.new({
        example: "content-type",
        name: "PROPERTY",
        pattern: "content-type",
        type: DatadogAPIClient::V1::SyntheticsConfigVariableType::TEXT,
      }),
    ],
    request: DatadogAPIClient::V1::SyntheticsTestRequest.new({
      certificate: DatadogAPIClient::V1::SyntheticsTestRequestCertificate.new({
        cert: DatadogAPIClient::V1::SyntheticsTestRequestCertificateItem.new({
          content: "cert-content",
          filename: "cert-filename",
          updated_at: "2020-10-16T09:23:24.857Z",
        }),
        key: DatadogAPIClient::V1::SyntheticsTestRequestCertificateItem.new({
          content: "key-content",
          filename: "key-filename",
          updated_at: "2020-10-16T09:23:24.857Z",
        }),
      }),
      headers: DatadogAPIClient::V1::SyntheticsTestHeaders.new({
        unique: "testexamplecreateanapitestreturnsokreturnsthecreatedtestdetailsresponse",
      }),
      method: DatadogAPIClient::V1::HTTPMethod::GET,
      timeout: 10,
      url: "https://datadoghq.com",
      proxy: DatadogAPIClient::V1::SyntheticsTestRequestProxy.new({
        url: "https://datadoghq.com",
        headers: DatadogAPIClient::V1::SyntheticsTestHeaders.new({}),
      }),
    }),
  }),
  locations: [
    "aws:us-east-2",
  ],
  message: "BDD test payload: synthetics_api_test_payload.json",
  name: "Test-Example-Create_an_API_test_returns_OK_Returns_the_created_test_details_response",
  options: DatadogAPIClient::V1::SyntheticsTestOptions.new({
    accept_self_signed: false,
    allow_insecure: true,
    follow_redirects: true,
    min_failure_duration: 10,
    min_location_failed: 1,
    monitor_name: "Test-Example-Create_an_API_test_returns_OK_Returns_the_created_test_details_response",
    monitor_priority: 5,
    _retry: DatadogAPIClient::V1::SyntheticsTestOptionsRetry.new({
      count: 3,
      interval: 10,
    }),
    tick_every: 60,
  }),
  subtype: DatadogAPIClient::V1::SyntheticsTestDetailsSubType::HTTP,
  tags: [
    "testing:api",
  ],
  type: DatadogAPIClient::V1::SyntheticsAPITestType::API,
})
p api_instance.create_synthetics_api_test(body)

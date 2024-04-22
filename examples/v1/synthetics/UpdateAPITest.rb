# Edit an API test returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

# there is a valid "synthetics_api_test" in the system
SYNTHETICS_API_TEST_PUBLIC_ID = ENV["SYNTHETICS_API_TEST_PUBLIC_ID"]

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
      DatadogAPIClient::V1::SyntheticsAssertionJSONSchemaTarget.new({
        operator: DatadogAPIClient::V1::SyntheticsAssertionJSONSchemaOperator::VALIDATES_JSON_SCHEMA,
        target: DatadogAPIClient::V1::SyntheticsAssertionJSONSchemaTargetTarget.new({
          meta_schema: DatadogAPIClient::V1::SyntheticsAssertionJSONSchemaMetaSchema::DRAFT_07,
          json_schema: '{"type": "object", "properties":{"slideshow":{"type":"object"}}}',
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
          filename: "cert-filename",
          updated_at: "2020-10-16T09:23:24.857Z",
        }),
        key: DatadogAPIClient::V1::SyntheticsTestRequestCertificateItem.new({
          filename: "key-filename",
          updated_at: "2020-10-16T09:23:24.857Z",
        }),
      }),
      headers: {
        unique: "examplesynthetic",
      },
      method: "GET",
      timeout: 10,
      url: "https://datadoghq.com",
    }),
  }),
  locations: [
    "aws:us-east-2",
  ],
  message: "BDD test payload: synthetics_api_test_payload.json",
  name: "Example-Synthetic-updated",
  options: DatadogAPIClient::V1::SyntheticsTestOptions.new({
    accept_self_signed: false,
    allow_insecure: true,
    follow_redirects: true,
    min_failure_duration: 10,
    min_location_failed: 1,
    monitor_name: "Test-TestSyntheticsAPITestLifecycle-1623076664",
    monitor_priority: 5,
    _retry: DatadogAPIClient::V1::SyntheticsTestOptionsRetry.new({
      count: 3,
      interval: 10,
    }),
    tick_every: 60,
  }),
  status: DatadogAPIClient::V1::SyntheticsTestPauseStatus::LIVE,
  subtype: DatadogAPIClient::V1::SyntheticsTestDetailsSubType::HTTP,
  tags: [
    "testing:api",
  ],
  type: DatadogAPIClient::V1::SyntheticsAPITestType::API,
})
p api_instance.update_api_test(SYNTHETICS_API_TEST_PUBLIC_ID, body)

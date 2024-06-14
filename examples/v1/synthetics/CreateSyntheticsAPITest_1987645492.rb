# Create an API HTTP test has bodyHash filled out

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
        timings_scope: DatadogAPIClient::V1::SyntheticsAssertionTimingsScope::WITHOUT_DNS,
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
      DatadogAPIClient::V1::SyntheticsAssertionJSONPathTarget.new({
        operator: DatadogAPIClient::V1::SyntheticsAssertionJSONPathOperator::VALIDATES_JSON_PATH,
        target: DatadogAPIClient::V1::SyntheticsAssertionJSONPathTargetTarget.new({
          elements_operator: "atLeastOneElementMatches",
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
      DatadogAPIClient::V1::SyntheticsAssertionXPathTarget.new({
        operator: DatadogAPIClient::V1::SyntheticsAssertionXPathOperator::VALIDATES_X_PATH,
        target: DatadogAPIClient::V1::SyntheticsAssertionXPathTargetTarget.new({
          x_path: "target-xpath",
          target_value: "0",
          operator: "contains",
        }),
        type: DatadogAPIClient::V1::SyntheticsAssertionType::BODY,
      }),
      DatadogAPIClient::V1::SyntheticsAssertionBodyHashTarget.new({
        operator: DatadogAPIClient::V1::SyntheticsAssertionBodyHashOperator::MD5,
        target: "a",
        type: DatadogAPIClient::V1::SyntheticsAssertionBodyHashType::BODY_HASH,
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
    variables_from_script: 'dd.variable.set("FOO", "foo")',
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
      headers: {
        unique: "examplesynthetic",
      },
      method: "GET",
      timeout: 10,
      url: "https://datadoghq.com",
      proxy: DatadogAPIClient::V1::SyntheticsTestRequestProxy.new({
        url: "https://datadoghq.com",
        headers: {},
      }),
      basic_auth: DatadogAPIClient::V1::SyntheticsBasicAuthOauthClient.new({
        access_token_url: "https://datadog-token.com",
        audience: "audience",
        client_id: "client-id",
        client_secret: "client-secret",
        resource: "resource",
        scope: "yoyo",
        token_api_authentication: DatadogAPIClient::V1::SyntheticsBasicAuthOauthTokenApiAuthentication::HEADER,
        type: DatadogAPIClient::V1::SyntheticsBasicAuthOauthClientType::OAUTH_CLIENT,
      }),
      persist_cookies: true,
    }),
  }),
  locations: [
    "aws:us-east-2",
  ],
  message: "BDD test payload: synthetics_api_http_test_payload.json",
  name: "Example-Synthetic",
  options: DatadogAPIClient::V1::SyntheticsTestOptions.new({
    accept_self_signed: false,
    allow_insecure: true,
    follow_redirects: true,
    min_failure_duration: 10,
    min_location_failed: 1,
    monitor_name: "Example-Synthetic",
    monitor_priority: 5,
    _retry: DatadogAPIClient::V1::SyntheticsTestOptionsRetry.new({
      count: 3,
      interval: 10,
    }),
    tick_every: 60,
    http_version: DatadogAPIClient::V1::SyntheticsTestOptionsHTTPVersion::HTTP2,
  }),
  subtype: DatadogAPIClient::V1::SyntheticsTestDetailsSubType::HTTP,
  tags: [
    "testing:api",
  ],
  type: DatadogAPIClient::V1::SyntheticsAPITestType::API,
})
p api_instance.create_synthetics_api_test(body)

# Edit a browser test returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

body = DatadogAPIClient::V1::SyntheticsBrowserTest.new({
  config: DatadogAPIClient::V1::SyntheticsBrowserTestConfig.new({
    assertions: [],
    config_variables: [
      DatadogAPIClient::V1::SyntheticsConfigVariable.new({
        name: "VARIABLE_NAME",
        secure: false,
        type: DatadogAPIClient::V1::SyntheticsConfigVariableType::TEXT,
      }),
    ],
    request: DatadogAPIClient::V1::SyntheticsTestRequest.new({
      basic_auth: DatadogAPIClient::V1::SyntheticsBasicAuthWeb.new({
        password: "PaSSw0RD!",
        type: DatadogAPIClient::V1::SyntheticsBasicAuthWebType::WEB,
        username: "my_username",
      }),
      body_type: DatadogAPIClient::V1::SyntheticsTestRequestBodyType::TEXT_PLAIN,
      call_type: DatadogAPIClient::V1::SyntheticsTestCallType::UNARY,
      certificate: DatadogAPIClient::V1::SyntheticsTestRequestCertificate.new({
        cert: DatadogAPIClient::V1::SyntheticsTestRequestCertificateItem.new({}),
        key: DatadogAPIClient::V1::SyntheticsTestRequestCertificateItem.new({}),
      }),
      certificate_domains: [],
      files: [
        DatadogAPIClient::V1::SyntheticsTestRequestBodyFile.new({}),
      ],
      http_version: DatadogAPIClient::V1::SyntheticsTestOptionsHTTPVersion::HTTP1,
      proxy: DatadogAPIClient::V1::SyntheticsTestRequestProxy.new({
        url: "https://example.com",
      }),
      service: "Greeter",
      url: "https://example.com",
    }),
    variables: [
      DatadogAPIClient::V1::SyntheticsBrowserVariable.new({
        name: "VARIABLE_NAME",
        type: DatadogAPIClient::V1::SyntheticsBrowserVariableType::TEXT,
      }),
    ],
  }),
  locations: [
    "aws:eu-west-3",
  ],
  message: "",
  name: "Example test name",
  options: DatadogAPIClient::V1::SyntheticsTestOptions.new({
    ci: DatadogAPIClient::V1::SyntheticsTestCiOptions.new({
      execution_rule: DatadogAPIClient::V1::SyntheticsTestExecutionRule::BLOCKING,
    }),
    device_ids: [
      DatadogAPIClient::V1::SyntheticsDeviceID::CHROME_LAPTOP_LARGE,
    ],
    http_version: DatadogAPIClient::V1::SyntheticsTestOptionsHTTPVersion::HTTP1,
    monitor_options: DatadogAPIClient::V1::SyntheticsTestOptionsMonitorOptions.new({}),
    restricted_roles: [
      "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
    ],
    _retry: DatadogAPIClient::V1::SyntheticsTestOptionsRetry.new({}),
    rum_settings: DatadogAPIClient::V1::SyntheticsBrowserTestRumSettings.new({
      application_id: "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
      client_token_id: 12345,
      is_enabled: true,
    }),
    scheduling: DatadogAPIClient::V1::SyntheticsTestOptionsScheduling.new({
      timeframes: [
        DatadogAPIClient::V1::SyntheticsTestOptionsSchedulingTimeframe.new({
          day: 1,
          from: "07:00",
          to: "16:00",
        }),
        DatadogAPIClient::V1::SyntheticsTestOptionsSchedulingTimeframe.new({
          day: 3,
          from: "07:00",
          to: "16:00",
        }),
      ],
      timezone: "America/New_York",
    }),
  }),
  status: DatadogAPIClient::V1::SyntheticsTestPauseStatus::LIVE,
  steps: [
    DatadogAPIClient::V1::SyntheticsStep.new({
      type: DatadogAPIClient::V1::SyntheticsStepType::ASSERT_ELEMENT_CONTENT,
    }),
  ],
  tags: [
    "env:prod",
  ],
  type: DatadogAPIClient::V1::SyntheticsBrowserTestType::BROWSER,
})
p api_instance.update_browser_test("public_id", body)

# Create a browser test returns "OK - Returns saved rumSettings." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

body = DatadogAPIClient::V1::SyntheticsBrowserTest.new({
  config: DatadogAPIClient::V1::SyntheticsBrowserTestConfig.new({
    assertions: [],
    config_variables: [
      DatadogAPIClient::V1::SyntheticsConfigVariable.new({
        example: "content-type",
        name: "PROPERTY",
        pattern: "content-type",
        type: DatadogAPIClient::V1::SyntheticsConfigVariableType::TEXT,
      }),
    ],
    request: DatadogAPIClient::V1::SyntheticsTestRequest.new({
      method: "GET",
      url: "https://datadoghq.com",
      certificate_domains: [
        "https://datadoghq.com",
      ],
    }),
    set_cookie: "name:test",
  }),
  locations: [
    "aws:us-east-2",
  ],
  message: "Test message",
  name: "Example-Synthetic",
  options: DatadogAPIClient::V1::SyntheticsTestOptions.new({
    accept_self_signed: false,
    allow_insecure: true,
    device_ids: [
      DatadogAPIClient::V1::SyntheticsDeviceID::TABLET,
    ],
    disable_cors: true,
    follow_redirects: true,
    min_failure_duration: 10,
    min_location_failed: 1,
    no_screenshot: true,
    _retry: DatadogAPIClient::V1::SyntheticsTestOptionsRetry.new({
      count: 2,
      interval: 10,
    }),
    rum_settings: DatadogAPIClient::V1::SyntheticsBrowserTestRumSettings.new({
      is_enabled: true,
      application_id: "mockApplicationId",
      client_token_id: 12345,
    }),
    tick_every: 300,
    ci: DatadogAPIClient::V1::SyntheticsTestCiOptions.new({
      execution_rule: DatadogAPIClient::V1::SyntheticsTestExecutionRule::SKIPPED,
    }),
    ignore_server_certificate_error: true,
    disable_csp: true,
    initial_navigation_timeout: 200,
  }),
  tags: [
    "testing:browser",
  ],
  type: DatadogAPIClient::V1::SyntheticsBrowserTestType::BROWSER,
  steps: [
    DatadogAPIClient::V1::SyntheticsStep.new({
      allow_failure: false,
      is_critical: true,
      name: "Refresh page",
      params: {},
      type: DatadogAPIClient::V1::SyntheticsStepType::REFRESH,
    }),
  ],
})
p api_instance.create_synthetics_browser_test(body)

# Create a browser test with advanced scheduling options returns "OK - Returns the created test details." response

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
    tick_every: 300,
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

# Edit a browser test returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

body = DatadogAPIClient::V1::SyntheticsBrowserTest.new({
  config: DatadogAPIClient::V1::SyntheticsBrowserTestConfig.new({
    assertions: [],
    config_variables: [
      DatadogAPIClient::V1::SyntheticsConfigVariable.new({
        name: "VARIABLE_NAME",
        type: DatadogAPIClient::V1::SyntheticsConfigVariableType::TEXT,
      }),
    ],
    request: DatadogAPIClient::V1::SyntheticsTestRequest.new({
      basic_auth: DatadogAPIClient::V1::SyntheticsBasicAuthWeb.new({
        password: "",
        type: DatadogAPIClient::V1::SyntheticsBasicAuthWebType::WEB,
        username: "",
      }),
      certificate: DatadogAPIClient::V1::SyntheticsTestRequestCertificate.new({
        cert: DatadogAPIClient::V1::SyntheticsTestRequestCertificateItem.new({}),
        key: DatadogAPIClient::V1::SyntheticsTestRequestCertificateItem.new({}),
      }),
      method: DatadogAPIClient::V1::HTTPMethod::GET,
      proxy: DatadogAPIClient::V1::SyntheticsTestRequestProxy.new({
        url: "https://example.com",
      }),
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
    device_ids: [
      DatadogAPIClient::V1::SyntheticsDeviceID::LAPTOP_LARGE,
    ],
    monitor_options: DatadogAPIClient::V1::SyntheticsTestOptionsMonitorOptions.new({}),
    _retry: DatadogAPIClient::V1::SyntheticsTestOptionsRetry.new({}),
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

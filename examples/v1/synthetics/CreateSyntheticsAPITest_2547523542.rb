# Create an API test with MCP steps returns "OK - Returns the created test details." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

body = DatadogAPIClient::V1::SyntheticsAPITest.new({
  config: DatadogAPIClient::V1::SyntheticsAPITestConfig.new({
    steps: [
      DatadogAPIClient::V1::SyntheticsAPITestStep.new({
        name: "Initialize MCP session",
        subtype: DatadogAPIClient::V1::SyntheticsAPITestStepSubtype::MCP,
        allow_failure: false,
        is_critical: true,
        _retry: DatadogAPIClient::V1::SyntheticsTestOptionsRetry.new({
          count: 0,
          interval: 300,
        }),
        assertions: [
          DatadogAPIClient::V1::SyntheticsAssertionTarget.new({
            operator: DatadogAPIClient::V1::SyntheticsAssertionOperator::IS,
            type: DatadogAPIClient::V1::SyntheticsAssertionType::STATUS_CODE,
            target: 200,
          }),
          DatadogAPIClient::V1::SyntheticsAssertionMCPRespectsSpecification.new({
            type: DatadogAPIClient::V1::SyntheticsAssertionMCPRespectsSpecificationType::MCP_RESPECTS_SPECIFICATION,
          }),
          DatadogAPIClient::V1::SyntheticsAssertionMCPServerCapabilitiesTarget.new({
            operator: DatadogAPIClient::V1::SyntheticsAssertionOperator::CONTAINS,
            type: DatadogAPIClient::V1::SyntheticsAssertionMCPServerCapabilitiesType::MCP_SERVER_CAPABILITIES,
            target: [
              DatadogAPIClient::V1::SyntheticsMCPServerCapability::TOOLS,
            ],
          }),
        ],
        request: DatadogAPIClient::V1::SyntheticsTestRequest.new({
          url: "https://example.org/mcp",
          call_type: DatadogAPIClient::V1::SyntheticsTestCallType::INIT,
          mcp_protocol_version: DatadogAPIClient::V1::SyntheticsMCPProtocolVersion::VERSION_2025_06_18,
          headers: {
            "DD-API-KEY" => "<YOUR-API-KEY>", "DD-APPLICATION-KEY" => "<YOUR-APP-KEY>",
          },
        }),
      }),
      DatadogAPIClient::V1::SyntheticsAPITestStep.new({
        name: "List MCP tools",
        subtype: DatadogAPIClient::V1::SyntheticsAPITestStepSubtype::MCP,
        allow_failure: false,
        is_critical: true,
        _retry: DatadogAPIClient::V1::SyntheticsTestOptionsRetry.new({
          count: 0,
          interval: 300,
        }),
        assertions: [
          DatadogAPIClient::V1::SyntheticsAssertionTarget.new({
            operator: DatadogAPIClient::V1::SyntheticsAssertionOperator::IS,
            type: DatadogAPIClient::V1::SyntheticsAssertionType::STATUS_CODE,
            target: 200,
          }),
          DatadogAPIClient::V1::SyntheticsAssertionTarget.new({
            operator: DatadogAPIClient::V1::SyntheticsAssertionOperator::MORE_THAN,
            type: DatadogAPIClient::V1::SyntheticsAssertionType::MCP_TOOL_COUNT,
            target: 0,
          }),
          DatadogAPIClient::V1::SyntheticsAssertionTarget.new({
            operator: DatadogAPIClient::V1::SyntheticsAssertionOperator::LESS_THAN,
            type: DatadogAPIClient::V1::SyntheticsAssertionType::MCP_TOOL_NAME_LENGTH,
            target: 64,
          }),
          DatadogAPIClient::V1::SyntheticsAssertionMCPRespectsSpecification.new({
            type: DatadogAPIClient::V1::SyntheticsAssertionMCPRespectsSpecificationType::MCP_RESPECTS_SPECIFICATION,
          }),
        ],
        request: DatadogAPIClient::V1::SyntheticsTestRequest.new({
          url: "https://example.org/mcp",
          call_type: DatadogAPIClient::V1::SyntheticsTestCallType::TOOL_LIST,
          mcp_protocol_version: DatadogAPIClient::V1::SyntheticsMCPProtocolVersion::VERSION_2025_06_18,
          headers: {
            "DD-API-KEY" => "<YOUR-API-KEY>", "DD-APPLICATION-KEY" => "<YOUR-APP-KEY>",
          },
        }),
      }),
      DatadogAPIClient::V1::SyntheticsAPITestStep.new({
        name: "Call MCP search tool",
        subtype: DatadogAPIClient::V1::SyntheticsAPITestStepSubtype::MCP,
        allow_failure: false,
        is_critical: true,
        _retry: DatadogAPIClient::V1::SyntheticsTestOptionsRetry.new({
          count: 0,
          interval: 300,
        }),
        assertions: [
          DatadogAPIClient::V1::SyntheticsAssertionTarget.new({
            operator: DatadogAPIClient::V1::SyntheticsAssertionOperator::IS,
            type: DatadogAPIClient::V1::SyntheticsAssertionType::STATUS_CODE,
            target: 200,
          }),
          DatadogAPIClient::V1::SyntheticsAssertionTarget.new({
            operator: DatadogAPIClient::V1::SyntheticsAssertionOperator::LESS_THAN,
            type: DatadogAPIClient::V1::SyntheticsAssertionType::RESPONSE_TIME,
            target: 5000,
          }),
          DatadogAPIClient::V1::SyntheticsAssertionMCPRespectsSpecification.new({
            type: DatadogAPIClient::V1::SyntheticsAssertionMCPRespectsSpecificationType::MCP_RESPECTS_SPECIFICATION,
          }),
        ],
        request: DatadogAPIClient::V1::SyntheticsTestRequest.new({
          url: "https://example.org/mcp",
          call_type: DatadogAPIClient::V1::SyntheticsTestCallType::TOOL_CALL,
          mcp_protocol_version: DatadogAPIClient::V1::SyntheticsMCPProtocolVersion::VERSION_2025_06_18,
          tool_name: "search",
          tool_args: {
            "limit": "5", "query": "datadog synthetics",
          },
          headers: {
            "DD-API-KEY" => "<YOUR-API-KEY>", "DD-APPLICATION-KEY" => "<YOUR-APP-KEY>",
          },
        }),
      }),
    ],
  }),
  locations: [
    "aws:us-east-2",
  ],
  message: "BDD test payload: synthetics_api_test_mcp_payload.json",
  name: "Example-Synthetic",
  options: DatadogAPIClient::V1::SyntheticsTestOptions.new({
    min_failure_duration: 10,
    min_location_failed: 1,
    monitor_name: "Example-Synthetic",
    monitor_priority: 5,
    _retry: DatadogAPIClient::V1::SyntheticsTestOptionsRetry.new({
      count: 3,
      interval: 1000,
    }),
    tick_every: 900,
  }),
  subtype: DatadogAPIClient::V1::SyntheticsTestDetailsSubType::MULTI,
  tags: [
    "testing:api",
  ],
  type: DatadogAPIClient::V1::SyntheticsAPITestType::API,
})
p api_instance.create_synthetics_api_test(body)

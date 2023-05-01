# Create an API GRPC test returns "OK - Returns the created test details." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

body = DatadogAPIClient::V1::SyntheticsAPITest.new({
  config: DatadogAPIClient::V1::SyntheticsAPITestConfig.new({
    assertions: [
      DatadogAPIClient::V1::SyntheticsAssertionTarget.new({
        operator: DatadogAPIClient::V1::SyntheticsAssertionOperator::IS,
        target: 1,
        type: DatadogAPIClient::V1::SyntheticsAssertionType::GRPC_HEALTHCHECK_STATUS,
      }),
      DatadogAPIClient::V1::SyntheticsAssertionTarget.new({
        operator: DatadogAPIClient::V1::SyntheticsAssertionOperator::IS,
        target: "proto target",
        type: DatadogAPIClient::V1::SyntheticsAssertionType::GRPC_PROTO,
      }),
      DatadogAPIClient::V1::SyntheticsAssertionTarget.new({
        operator: DatadogAPIClient::V1::SyntheticsAssertionOperator::IS,
        target: "123",
        property: "property",
        type: DatadogAPIClient::V1::SyntheticsAssertionType::GRPC_METADATA,
      }),
    ],
    request: DatadogAPIClient::V1::SyntheticsTestRequest.new({
      host: "localhost",
      port: 50051,
      service: "Hello",
      method: "GET",
      message: "",
      metadata: {},
    }),
  }),
  locations: [
    "aws:us-east-2",
  ],
  message: "BDD test payload: synthetics_api_grpc_test_payload.json",
  name: "Example-Synthetic",
  options: DatadogAPIClient::V1::SyntheticsTestOptions.new({
    min_failure_duration: 0,
    min_location_failed: 1,
    monitor_options: DatadogAPIClient::V1::SyntheticsTestOptionsMonitorOptions.new({
      renotify_interval: 0,
    }),
    monitor_name: "Example-Synthetic",
    tick_every: 60,
  }),
  subtype: DatadogAPIClient::V1::SyntheticsTestDetailsSubType::GRPC,
  tags: [
    "testing:api",
  ],
  type: DatadogAPIClient::V1::SyntheticsAPITestType::API,
})
p api_instance.create_synthetics_api_test(body)

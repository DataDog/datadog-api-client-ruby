# Synthetics: Create a Network Path test returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SyntheticsAPI.new

body = DatadogAPIClient::V2::SyntheticsNetworkTestEditRequest.new({
  data: DatadogAPIClient::V2::SyntheticsNetworkTestEdit.new({
    attributes: DatadogAPIClient::V2::SyntheticsNetworkTest.new({
      config: DatadogAPIClient::V2::SyntheticsNetworkTestConfig.new({
        assertions: [
          DatadogAPIClient::V2::SyntheticsNetworkAssertionLatency.new({
            operator: DatadogAPIClient::V2::SyntheticsNetworkAssertionOperator::LESS_THAN,
            property: DatadogAPIClient::V2::SyntheticsNetworkAssertionProperty::AVG,
            target: 500,
            type: DatadogAPIClient::V2::SyntheticsNetworkAssertionLatencyType::LATENCY,
          }),
        ],
        request: DatadogAPIClient::V2::SyntheticsNetworkTestRequest.new({
          host: "example.com",
          port: 443,
          tcp_method: DatadogAPIClient::V2::SyntheticsNetworkTestRequestTCPMethod::PREFER_SACK,
          max_ttl: 30,
          e2e_queries: 50,
          traceroute_queries: 3,
        }),
      }),
      locations: [
        "aws:us-east-1",
        "agent:my-agent-name",
      ],
      message: "Network Path test notification",
      name: "Example Network Path test",
      options: DatadogAPIClient::V2::SyntheticsTestOptions.new({
        tick_every: 60,
      }),
      status: DatadogAPIClient::V2::SyntheticsTestPauseStatus::LIVE,
      subtype: DatadogAPIClient::V2::SyntheticsNetworkTestSubType::TCP,
      tags: [
        "env:production",
      ],
      type: DatadogAPIClient::V2::SyntheticsNetworkTestType::NETWORK,
    }),
    type: DatadogAPIClient::V2::SyntheticsNetworkTestType::NETWORK,
  }),
})
p api_instance.create_synthetics_network_test(body)

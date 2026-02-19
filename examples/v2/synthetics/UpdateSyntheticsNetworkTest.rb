# Synthetics: Edit a Network Path test returns "OK" response

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
          e2e_queries: 50,
          host: "",
          max_ttl: 30,
          port: 443,
          tcp_method: DatadogAPIClient::V2::SyntheticsNetworkTestRequestTCPMethod::PREFER_SACK,
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
        monitor_options: DatadogAPIClient::V2::SyntheticsTestOptionsMonitorOptions.new({
          notification_preset_name: DatadogAPIClient::V2::SyntheticsTestOptionsMonitorOptionsNotificationPresetName::SHOW_ALL,
        }),
        restricted_roles: [
          "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
        ],
        _retry: DatadogAPIClient::V2::SyntheticsTestOptionsRetry.new({}),
        scheduling: DatadogAPIClient::V2::SyntheticsTestOptionsScheduling.new({
          timeframes: [
            DatadogAPIClient::V2::SyntheticsTestOptionsSchedulingTimeframe.new({
              day: 1,
              from: "07:00",
              to: "16:00",
            }),
            DatadogAPIClient::V2::SyntheticsTestOptionsSchedulingTimeframe.new({
              day: 3,
              from: "07:00",
              to: "16:00",
            }),
          ],
          timezone: "America/New_York",
        }),
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
p api_instance.update_synthetics_network_test("public_id", body)

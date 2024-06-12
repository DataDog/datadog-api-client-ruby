# Test an existing rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringRuleTestRequest.new({
  rule_query_payloads: [
    DatadogAPIClient::V2::SecurityMonitoringRuleQueryPayload.new({
      expected_result: true,
      index: 0,
      payload: DatadogAPIClient::V2::SecurityMonitoringRuleQueryPayloadData.new({
        ddsource: "nginx",
        ddtags: "env:staging,version:5.1",
        hostname: "i-012345678",
        message: "2019-11-19T14:37:58,995 INFO [process.name][20081] Hello World",
        service: "payment",
      }),
    }),
  ],
})
p api_instance.test_existing_security_monitoring_rule("rule_id", body)

# Create a suppression rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringSuppressionCreateRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringSuppressionCreateData.new({
    attributes: DatadogAPIClient::V2::SecurityMonitoringSuppressionCreateAttributes.new({
      description: "This rule suppresses low-severity signals in staging environments.",
      enabled: true,
      expiration_date: 1638443471000,
      name: "Example-Security-Monitoring",
      rule_query: "type:log_detection source:cloudtrail",
      suppression_query: "env:staging status:low",
    }),
    type: DatadogAPIClient::V2::SecurityMonitoringSuppressionType::SUPPRESSIONS,
  }),
})
p api_instance.create_security_monitoring_suppression(body)

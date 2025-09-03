# Validate a suppression rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringSuppressionUpdateRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringSuppressionUpdateData.new({
    attributes: DatadogAPIClient::V2::SecurityMonitoringSuppressionUpdateAttributes.new({
      data_exclusion_query: "source:cloudtrail account_id:12345",
      description: "This rule suppresses low-severity signals in staging environments.",
      enabled: true,
      name: "Custom suppression",
      rule_query: "type:log_detection source:cloudtrail",
    }),
    type: DatadogAPIClient::V2::SecurityMonitoringSuppressionType::SUPPRESSIONS,
  }),
})
api_instance.validate_security_monitoring_suppression(body)

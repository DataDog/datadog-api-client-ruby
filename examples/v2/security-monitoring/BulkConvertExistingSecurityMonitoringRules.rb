# Bulk convert rules to Terraform returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringRuleConvertBulkPayload.new({
  data: DatadogAPIClient::V2::SecurityMonitoringRuleConvertBulkData.new({
    attributes: DatadogAPIClient::V2::SecurityMonitoringRuleConvertBulkAttributes.new({
      rule_ids: [
        "def-000-u7q",
        "def-000-7dd",
      ],
    }),
    id: "convert_bulk",
    type: DatadogAPIClient::V2::SecurityMonitoringRuleConvertBulkDataType::SECURITY_MONITORING_RULES_CONVERT_BULK,
  }),
})
p api_instance.bulk_convert_existing_security_monitoring_rules(body)

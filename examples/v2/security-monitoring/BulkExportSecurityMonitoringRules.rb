# Bulk export security monitoring rules returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "security_rule" in the system
SECURITY_RULE_ID = ENV["SECURITY_RULE_ID"]

body = DatadogAPIClient::V2::SecurityMonitoringRuleBulkExportPayload.new({
  data: DatadogAPIClient::V2::SecurityMonitoringRuleBulkExportData.new({
    attributes: DatadogAPIClient::V2::SecurityMonitoringRuleBulkExportAttributes.new({
      rule_ids: [
        SECURITY_RULE_ID,
      ],
    }),
    type: DatadogAPIClient::V2::SecurityMonitoringRuleBulkExportDataType::SECURITY_MONITORING_RULES_BULK_EXPORT,
  }),
})
p api_instance.bulk_export_security_monitoring_rules(body)

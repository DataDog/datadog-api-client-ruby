# Bulk delete security monitoring rules returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringRuleBulkDeletePayload.new({
  data: DatadogAPIClient::V2::SecurityMonitoringRuleBulkDeleteData.new({
    attributes: DatadogAPIClient::V2::SecurityMonitoringRuleBulkDeleteAttributes.new({
      rule_ids: [
        "abc-000-u7q",
        "abc-000-7dd",
      ],
    }),
    type: DatadogAPIClient::V2::SecurityMonitoringRuleBulkDeleteRequestDataType::BULK_DELETE_RULES,
  }),
})
p api_instance.bulk_delete_security_monitoring_rules(body)

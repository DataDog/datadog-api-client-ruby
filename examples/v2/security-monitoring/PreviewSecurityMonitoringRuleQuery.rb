# Preview a rule query with applied filters returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringRuleLivetailRequest.new({
  query: "source:cloudtrail",
  query_index: 0,
  filters: [],
  type: DatadogAPIClient::V2::SecurityMonitoringRuleTypeRead::LOG_DETECTION,
  detection_method: DatadogAPIClient::V2::SecurityMonitoringRuleDetectionMethod::THRESHOLD,
  data_source: "logs",
  group_by_fields: [],
  distinct_fields: [],
})
p api_instance.preview_security_monitoring_rule_query(body)

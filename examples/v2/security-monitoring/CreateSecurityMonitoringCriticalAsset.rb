# Create a critical asset returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringCriticalAssetCreateRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringCriticalAssetCreateData.new({
    type: DatadogAPIClient::V2::SecurityMonitoringCriticalAssetType::CRITICAL_ASSETS,
    attributes: DatadogAPIClient::V2::SecurityMonitoringCriticalAssetCreateAttributes.new({
      query: "host:examplesecuritymonitoring",
      rule_query: "type:(log_detection OR signal_correlation OR workload_security OR application_security) source:cloudtrail",
      severity: DatadogAPIClient::V2::SecurityMonitoringCriticalAssetSeverity::DECREASE,
      tags: [
        "team:security",
        "env:test",
      ],
    }),
  }),
})
p api_instance.create_security_monitoring_critical_asset(body)

# Update a critical asset returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "critical_asset" in the system
CRITICAL_ASSET_DATA_ID = ENV["CRITICAL_ASSET_DATA_ID"]

body = DatadogAPIClient::V2::SecurityMonitoringCriticalAssetUpdateRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringCriticalAssetUpdateData.new({
    type: DatadogAPIClient::V2::SecurityMonitoringCriticalAssetType::CRITICAL_ASSETS,
    attributes: DatadogAPIClient::V2::SecurityMonitoringCriticalAssetUpdateAttributes.new({
      enabled: false,
      query: "no:alert",
      rule_query: "type:(log_detection OR signal_correlation OR workload_security OR application_security) ruleId:djg-ktx-ipq",
      severity: DatadogAPIClient::V2::SecurityMonitoringCriticalAssetSeverity::DECREASE,
      tags: [
        "env:production",
      ],
      version: 1,
    }),
  }),
})
p api_instance.update_security_monitoring_critical_asset(CRITICAL_ASSET_DATA_ID, body)

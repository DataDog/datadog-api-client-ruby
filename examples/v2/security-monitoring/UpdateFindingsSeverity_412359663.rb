# Apply a severity override to security findings returns "Accepted" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_findings_severity".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SeverityOverrideRequest.new({
  data: DatadogAPIClient::V2::SeverityOverrideRequestData.new({
    attributes: DatadogAPIClient::V2::SeverityOverrideRequestDataAttributes.new({
      severity: DatadogAPIClient::V2::SeverityOverrideSet.new({
        action: DatadogAPIClient::V2::SeverityOverrideSetActionType::SET,
        description: "Database contains sensitive data.",
        value: DatadogAPIClient::V2::SeverityOverrideValue::HIGH,
      }),
    }),
    relationships: DatadogAPIClient::V2::SeverityOverrideRequestDataRelationships.new({
      findings: DatadogAPIClient::V2::Findings.new({
        data: [
          DatadogAPIClient::V2::FindingData.new({
            id: "ZGVmLTAwMC0wYmd-MDE4NjcyMDJkMzE4MDE5ODY5MGE4ZmQ2MmFlMjg0Y2M=",
            type: DatadogAPIClient::V2::FindingDataType::FINDINGS,
          }),
        ],
      }),
    }),
    type: DatadogAPIClient::V2::SeverityOverrideDataType::SEVERITY_OVERRIDE,
  }),
})
p api_instance.update_findings_severity(body)

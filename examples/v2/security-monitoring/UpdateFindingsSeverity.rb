# Override the severity of security findings returns "Accepted" response

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
    id: "00000000-0000-0000-0000-000000000001",
    relationships: DatadogAPIClient::V2::SeverityOverrideRequestDataRelationships.new({
      findings: DatadogAPIClient::V2::Findings.new({
        data: [
          DatadogAPIClient::V2::FindingData.new({
            id: "ZGVmLTAwcC1pZXJ-aS0wZjhjNjMyZDNmMzRlZTgzNw==",
            type: DatadogAPIClient::V2::FindingDataType::FINDINGS,
          }),
        ],
      }),
    }),
    type: DatadogAPIClient::V2::SeverityOverrideDataType::SEVERITY_OVERRIDE,
  }),
})
p api_instance.update_findings_severity(body)

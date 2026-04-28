# Mute security findings returns "Accepted" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.mute_security_findings".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::MuteFindingsRequest.new({
  data: DatadogAPIClient::V2::MuteFindingsRequestData.new({
    attributes: DatadogAPIClient::V2::MuteFindingsRequestDataAttributes.new({
      mute: DatadogAPIClient::V2::MuteFindingsMuteAttributes.new({
        description: "To be resolved later.",
        expire_at: 1778721573794,
        is_muted: true,
        reason: DatadogAPIClient::V2::MuteFindingsReason::RISK_ACCEPTED,
      }),
    }),
    relationships: DatadogAPIClient::V2::MuteFindingsRequestDataRelationships.new({
      findings: DatadogAPIClient::V2::Findings.new({
        data: [
          DatadogAPIClient::V2::FindingData.new({
            id: "ZGVmLTAwMC0wYmd-MDE4NjcyMDJkMzE4MDE5ODY5MGE4ZmQ2MmFlMjg0Y2M=",
            type: DatadogAPIClient::V2::FindingDataType::FINDINGS,
          }),
        ],
      }),
    }),
    type: DatadogAPIClient::V2::MuteDataType::MUTE,
  }),
})
p api_instance.mute_security_findings(body)

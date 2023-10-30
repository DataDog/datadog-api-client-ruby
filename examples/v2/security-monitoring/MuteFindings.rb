# Mute or unmute a batch of findings returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.mute_findings".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::BulkMuteFindingsRequest.new({
  data: DatadogAPIClient::V2::BulkMuteFindingsRequestData.new({
    attributes: DatadogAPIClient::V2::BulkMuteFindingsRequestAttributes.new({
      mute: DatadogAPIClient::V2::BulkMuteFindingsRequestProperties.new({
        expiration_date: 1778721573794,
        muted: true,
        reason: DatadogAPIClient::V2::FindingMuteReason::ACCEPTED_RISK,
      }),
    }),
    id: "dbe5f567-192b-4404-b908-29b70e1c9f76",
    meta: DatadogAPIClient::V2::BulkMuteFindingsRequestMeta.new({
      findings: [
        DatadogAPIClient::V2::BulkMuteFindingsRequestMetaFindings.new({
          finding_id: "ZGVmLTAwcC1pZXJ-aS0wZjhjNjMyZDNmMzRlZTgzNw==",
        }),
      ],
    }),
    type: DatadogAPIClient::V2::FindingType::FINDING,
  }),
})
p api_instance.mute_findings(body)

# Update a usage quota returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_quota".to_sym] = true
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new

body = DatadogAPIClient::V2::UsageQuotaUpdateRequest.new({
  data: DatadogAPIClient::V2::UsageQuotaUpdateData.new({
    attributes: DatadogAPIClient::V2::UsageQuotaUpdateAttributes.new({
      enforced: false,
      usage_limit: 120000,
    }),
    id: "MjAfYWlfY3JlZGl0c1911c2VyX2hhbmRsZTpfX0FMTF9f",
    type: DatadogAPIClient::V2::UsageQuotaType::QUOTAS,
  }),
})
p api_instance.update_quota("ai_credits", "MjAfYWlfY3JlZGl0c1911c2VyX2hhbmRsZTpfX0FMTF9f", body)

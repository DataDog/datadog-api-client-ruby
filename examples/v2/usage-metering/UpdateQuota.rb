# Update a usage quota returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_quota".to_sym] = true
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new

body = DatadogAPIClient::V2::UsageQuotaUpdateRequest.new({
  data: DatadogAPIClient::V2::UsageQuotaUpdateData.new({
    attributes: DatadogAPIClient::V2::UsageQuotaUpdateAttributes.new({
      enforced: false,
      pending_usage_limit: 50000,
      usage_limit: 120000,
    }),
    id: "MTIzNB9haV9jcmVkaXRzH3VzZXJfaGFuZGxlOl9fQUxMX18",
    type: DatadogAPIClient::V2::UsageQuotaType::QUOTAS,
  }),
})
p api_instance.update_quota("ai_credits", "MTIzNB9haV9jcmVkaXRzH3VzZXJfaGFuZGxlOl9fQUxMX18", body)

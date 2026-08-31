# Create or update usage quotas returns "OK. The response includes each item's result; see each item's `error` attribute
# for any that failed to write." response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_quotas".to_sym] = true
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new

body = DatadogAPIClient::V2::UsageQuotasCreateRequest.new({
  data: [
    DatadogAPIClient::V2::UsageQuotaCreateData.new({
      attributes: DatadogAPIClient::V2::UsageQuotaCreateAttributes.new({
        enforced: true,
        scope: {
          user_handle: "jane@example.com",
        },
        usage_limit: 100000,
      }),
      type: DatadogAPIClient::V2::UsageQuotaType::QUOTAS,
    }),
  ],
})
p api_instance.create_quotas("ai_credits", body)

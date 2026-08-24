# Create or update a RUM retention quota config returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMRetentionQuotasAPI.new

body = DatadogAPIClient::V2::RumRetentionQuotaConfigUpdateRequest.new({
  data: DatadogAPIClient::V2::RumRetentionQuotaConfigUpdateData.new({
    attributes: DatadogAPIClient::V2::RumRetentionQuotaConfigUpdateAttributes.new({
      custom: DatadogAPIClient::V2::RumRetentionQuotaCustomConfig.new({
        daily_reset_time: "08:00",
        daily_reset_timezone: "+09:00",
        quota_reached_action: DatadogAPIClient::V2::RumRetentionQuotaReachedAction::STOP,
        session_limit: 1000000,
        window_type: DatadogAPIClient::V2::RumRetentionQuotaWindowType::DAILY,
      }),
      mode: DatadogAPIClient::V2::RumRetentionQuotaMode::CUSTOM,
    }),
    id: "cd73a516-a481-4af5-8352-9b577465c77b",
    type: DatadogAPIClient::V2::RumRetentionQuotaConfigType::RUM_QUOTA_CONFIG,
  }),
})
p api_instance.upsert_rum_quota_config(RumRetentionQuotaScopeType::APPLICATION, "cd73a516-a481-4af5-8352-9b577465c77b", body)

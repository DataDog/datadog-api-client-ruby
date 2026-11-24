# Create or update a RUM retention quota config returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::RUMRetentionQuotasAPI.new

body = DatadogAPIClient::V2::RUMRetentionQuotaConfigUpdateRequest.new({
  data: DatadogAPIClient::V2::RUMRetentionQuotaConfigUpdateData.new({
    attributes: DatadogAPIClient::V2::RUMRetentionQuotaConfigUpdateAttributes.new({
      custom: DatadogAPIClient::V2::RUMRetentionQuotaCustomConfig.new({
        daily_reset_time: "08:00",
        daily_reset_timezone: "+09:00",
        quota_reached_action: DatadogAPIClient::V2::RUMRetentionQuotaReachedAction::STOP,
        session_limit: 1000000,
        window_type: DatadogAPIClient::V2::RUMRetentionQuotaWindowType::DAILY,
      }),
      mode: DatadogAPIClient::V2::RUMRetentionQuotaMode::CUSTOM,
    }),
    id: "cd73a516-a481-4af5-8352-9b577465c77b",
    type: DatadogAPIClient::V2::RUMRetentionQuotaConfigType::RUM_QUOTA_CONFIG,
  }),
})
p api_instance.upsert_rum_quota_config(RUMRetentionQuotaScopeType::APPLICATION, "cd73a516-a481-4af5-8352-9b577465c77b", body)

# Create or update a RUM rate limit configuration returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_rum_rate_limit_config".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RumRateLimitAPI.new

body = DatadogAPIClient::V2::RumRateLimitConfigUpdateRequest.new({
  data: DatadogAPIClient::V2::RumRateLimitConfigUpdateData.new({
    attributes: DatadogAPIClient::V2::RumRateLimitConfigUpdateAttributes.new({
      adaptive: DatadogAPIClient::V2::RumRateLimitAdaptiveConfig.new({
        max_retention_rate: 0.5,
      }),
      custom: DatadogAPIClient::V2::RumRateLimitCustomConfig.new({
        daily_reset_time: "08:00",
        daily_reset_timezone: "+09:00",
        quota_reached_action: DatadogAPIClient::V2::RumRateLimitQuotaReachedAction::STOP,
        session_limit: 1000000,
        window_type: DatadogAPIClient::V2::RumRateLimitWindowType::DAILY,
      }),
      mode: DatadogAPIClient::V2::RumRateLimitMode::CUSTOM,
    }),
    id: "cd73a516-a481-4af5-8352-9b577465c77b",
    type: DatadogAPIClient::V2::RumRateLimitConfigType::RUM_RATE_LIMIT_CONFIG,
  }),
})
p api_instance.update_rum_rate_limit_config(RumRateLimitScopeType::APPLICATION, "cd73a516-a481-4af5-8352-9b577465c77b", body)

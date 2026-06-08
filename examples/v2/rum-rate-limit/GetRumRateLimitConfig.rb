# Get a RUM rate limit configuration returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_rum_rate_limit_config".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RumRateLimitAPI.new
p api_instance.get_rum_rate_limit_config(RumRateLimitScopeType::APPLICATION, "cd73a516-a481-4af5-8352-9b577465c77b")

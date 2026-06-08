# Delete a RUM rate limit configuration returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_rum_rate_limit_config".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RumRateLimitAPI.new
api_instance.delete_rum_rate_limit_config(RumRateLimitScopeType::APPLICATION, "cd73a516-a481-4af5-8352-9b577465c77b")

# Get a RUM exclusion filter returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_exclusion_filter".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RumRetentionFiltersAPI.new
p api_instance.get_exclusion_filter("app_id", "ef_id")

# Get all RUM exclusion filters returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_exclusion_filters".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RumRetentionFiltersAPI.new
p api_instance.list_exclusion_filters("app_id")

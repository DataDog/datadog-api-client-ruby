# Delete a RUM exclusion filter returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_exclusion_filter".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RumRetentionFiltersAPI.new
api_instance.delete_exclusion_filter("app_id", "ef_id")

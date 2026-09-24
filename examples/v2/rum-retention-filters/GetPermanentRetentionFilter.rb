# Get a permanent RUM retention filter returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::RumRetentionFiltersAPI.new
p api_instance.get_permanent_retention_filter("app_id", RumPermanentRetentionFilterID::SYNTHETICS_SESSIONS)

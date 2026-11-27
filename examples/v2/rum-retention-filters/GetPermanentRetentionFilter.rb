# Get a permanent RUM retention filter returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::RumRetentionFiltersAPI.new

# there is a valid "rum_application" in the system
RUM_APPLICATION_DATA_ID = ENV["RUM_APPLICATION_DATA_ID"]
p api_instance.get_permanent_retention_filter(RUM_APPLICATION_DATA_ID, RumPermanentRetentionFilterID::SYNTHETICS_SESSIONS)

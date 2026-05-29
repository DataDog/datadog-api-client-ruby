# Get a permanent RUM retention filter returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumRetentionFiltersAPI.new
p api_instance.get_permanent_retention_filter("app_id", RumPermanentRetentionFilterID::SYNTHETICS_SESSIONS)

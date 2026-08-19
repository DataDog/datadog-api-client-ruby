# Get all RUM exclusion filters returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumRetentionFiltersAPI.new
p api_instance.list_exclusion_filters("app_id")

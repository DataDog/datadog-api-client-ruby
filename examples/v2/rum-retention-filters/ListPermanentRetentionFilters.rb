# Get all permanent RUM retention filters returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumRetentionFiltersAPI.new
p api_instance.list_permanent_retention_filters("app_id")

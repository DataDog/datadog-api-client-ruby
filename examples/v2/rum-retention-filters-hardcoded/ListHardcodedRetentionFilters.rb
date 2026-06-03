# Get all hardcoded retention filters returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMRetentionFiltersHardcodedAPI.new
p api_instance.list_hardcoded_retention_filters("Example-RUM-Retention-Filters-Hardcoded")

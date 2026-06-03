# Get a hardcoded retention filter returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMRetentionFiltersHardcodedAPI.new
p api_instance.get_hardcoded_retention_filter("Example-RUM-Retention-Filters-Hardcoded", "Example-RUM-Retention-Filters-Hardcoded")

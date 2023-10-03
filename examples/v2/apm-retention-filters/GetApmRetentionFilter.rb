# Get a given APM retention filter returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::APMRetentionFiltersAPI.new

# there is a valid "retention_filter" in the system
RETENTION_FILTER_DATA_ID = ENV["RETENTION_FILTER_DATA_ID"]
p api_instance.get_apm_retention_filter(RETENTION_FILTER_DATA_ID)

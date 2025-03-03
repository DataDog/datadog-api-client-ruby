# Get a RUM retention filter returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumRetentionFiltersAPI.new

# there is a valid "rum_retention_filter" in the system
RUM_RETENTION_FILTER_DATA_ID = ENV["RUM_RETENTION_FILTER_DATA_ID"]
p api_instance.get_retention_filter("a33671aa-24fd-4dcd-ba4b-5bbdbafe7690", RUM_RETENTION_FILTER_DATA_ID)

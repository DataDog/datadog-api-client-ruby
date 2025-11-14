# Delete a restriction query returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsRestrictionQueriesAPI.new

# there is a valid "restriction_query" in the system
RESTRICTION_QUERY_DATA_ID = ENV["RESTRICTION_QUERY_DATA_ID"]
api_instance.delete_restriction_query(RESTRICTION_QUERY_DATA_ID)

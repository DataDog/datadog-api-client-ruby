# Get restriction query for a given role returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsRestrictionQueriesAPI.new

# there is a valid "role" in the system
ROLE_DATA_ID = ENV["ROLE_DATA_ID"]
p api_instance.get_role_restriction_query(ROLE_DATA_ID)

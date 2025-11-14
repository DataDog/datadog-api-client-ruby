# Get all restriction queries for a given user returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsRestrictionQueriesAPI.new

# there is a valid "user" in the system
USER_DATA_ID = ENV["USER_DATA_ID"]
p api_instance.list_user_restriction_queries(USER_DATA_ID)

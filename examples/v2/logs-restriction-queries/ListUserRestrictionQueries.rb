# Get all restriction queries for a given user returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_user_restriction_queries".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LogsRestrictionQueriesAPI.new
p api_instance.list_user_restriction_queries("user_id")

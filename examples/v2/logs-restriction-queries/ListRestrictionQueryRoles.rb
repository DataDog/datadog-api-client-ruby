# List roles for a restriction query returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_restriction_query_roles".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LogsRestrictionQueriesAPI.new
p api_instance.list_restriction_query_roles("restriction_query_id")

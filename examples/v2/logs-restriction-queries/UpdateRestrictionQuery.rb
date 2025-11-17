# Update a restriction query returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_restriction_query".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LogsRestrictionQueriesAPI.new

# there is a valid "restriction_query" in the system
RESTRICTION_QUERY_DATA_ID = ENV["RESTRICTION_QUERY_DATA_ID"]

body = DatadogAPIClient::V2::RestrictionQueryUpdatePayload.new({
  data: DatadogAPIClient::V2::RestrictionQueryUpdateData.new({
    attributes: DatadogAPIClient::V2::RestrictionQueryUpdateAttributes.new({
      restriction_query: "env:production",
    }),
    type: DatadogAPIClient::V2::LogsRestrictionQueriesType::LOGS_RESTRICTION_QUERIES,
  }),
})
p api_instance.update_restriction_query(RESTRICTION_QUERY_DATA_ID, body)

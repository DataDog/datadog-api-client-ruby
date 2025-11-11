# Create a restriction query returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_restriction_query".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LogsRestrictionQueriesAPI.new

body = DatadogAPIClient::V2::RestrictionQueryCreatePayload.new({
  data: DatadogAPIClient::V2::RestrictionQueryCreateData.new({
    attributes: DatadogAPIClient::V2::RestrictionQueryCreateAttributes.new({
      restriction_query: "env:sandbox",
    }),
    type: DatadogAPIClient::V2::LogsRestrictionQueriesType::LOGS_RESTRICTION_QUERIES,
  }),
})
p api_instance.create_restriction_query(body)

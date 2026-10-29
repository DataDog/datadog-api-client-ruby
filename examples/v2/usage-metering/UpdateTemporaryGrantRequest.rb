# Decide a temporary grant request returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_temporary_grant_request".to_sym] = true
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new

# there is a valid "temporary_grant_request" in the system
TEMPORARY_GRANT_REQUEST_DATA_ID = ENV["TEMPORARY_GRANT_REQUEST_DATA_ID"]

body = DatadogAPIClient::V2::TemporaryGrantRequestDecisionRequest.new({
  data: DatadogAPIClient::V2::TemporaryGrantRequestDecisionData.new({
    attributes: DatadogAPIClient::V2::TemporaryGrantRequestDecisionAttributes.new({
      decision: DatadogAPIClient::V2::TemporaryGrantRequestDecision::DENIED,
    }),
    id: TEMPORARY_GRANT_REQUEST_DATA_ID,
    type: DatadogAPIClient::V2::TemporaryGrantRequestType::TEMPORARY_GRANT_REQUESTS,
  }),
})
p api_instance.update_temporary_grant_request(TEMPORARY_GRANT_REQUEST_DATA_ID, body)

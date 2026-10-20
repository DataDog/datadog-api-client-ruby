# Decide a temporary grant request returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.public_decide_temporary_grant_request".to_sym] = true
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new

body = DatadogAPIClient::V2::TemporaryGrantRequestDecisionRequest.new({
  data: DatadogAPIClient::V2::TemporaryGrantRequestDecisionData.new({
    attributes: DatadogAPIClient::V2::TemporaryGrantRequestDecisionAttributes.new({
      decision: DatadogAPIClient::V2::TemporaryGrantRequestDecision::APPROVED,
    }),
    id: "12345678-1234-1234-1234-123456789012",
    type: DatadogAPIClient::V2::TemporaryGrantRequestType::TEMPORARY_GRANT_REQUESTS,
  }),
})
p api_instance.public_decide_temporary_grant_request("12345678-1234-1234-1234-123456789012", body)

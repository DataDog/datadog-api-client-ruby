# Create a temporary grant request returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_temporary_grant_request".to_sym] = true
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new

body = DatadogAPIClient::V2::TemporaryGrantRequestCreateRequest.new({
  data: DatadogAPIClient::V2::TemporaryGrantRequestCreateData.new({
    attributes: DatadogAPIClient::V2::TemporaryGrantRequestCreateAttributes.new({
      expires_at: "2028-02-16T00:00:00Z",
      justification: "Credits needed to finish the incident investigation.",
      total: 200,
    }),
    type: DatadogAPIClient::V2::TemporaryGrantRequestType::TEMPORARY_GRANT_REQUESTS,
  }),
})
p api_instance.create_temporary_grant_request(body)

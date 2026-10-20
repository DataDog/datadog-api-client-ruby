# Create a temporary grant request with a justification

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.public_create_temporary_grant_request".to_sym] = true
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new

body = DatadogAPIClient::V2::TemporaryGrantRequestCreateRequest.new({
  data: DatadogAPIClient::V2::TemporaryGrantRequestCreateData.new({
    type: DatadogAPIClient::V2::TemporaryGrantRequestType::TEMPORARY_GRANT_REQUESTS,
    attributes: DatadogAPIClient::V2::TemporaryGrantRequestCreateAttributes.new({
      total: 200,
      justification: "SDK temporary grant request test",
    }),
  }),
})
p api_instance.public_create_temporary_grant_request(body)

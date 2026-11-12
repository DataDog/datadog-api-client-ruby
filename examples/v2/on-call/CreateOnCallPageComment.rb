# Create On-Call Page Comment returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::OnCallAPI.new

body = DatadogAPIClient::V2::CreateOnCallPageCommentRequest.new({
  data: DatadogAPIClient::V2::CreateOnCallPageCommentRequestData.new({
    attributes: DatadogAPIClient::V2::CreateOnCallPageCommentRequestAttributes.new({
      body: "Comment from the API client integration tests.",
    }),
    id: "3c5f5b5e-3a3e-4f8c-9b1d-2f6a7e8d9c0b",
    type: DatadogAPIClient::V2::OnCallPageCommentType::COMMENTS,
  }),
})
api_instance.create_on_call_page_comment("f63eb677-07ce-46ab-b2e0-80ca1ffe91bf", body)

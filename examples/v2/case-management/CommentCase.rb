# Comment case returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

# there is a valid "case" in the system
CASE_ID = ENV["CASE_ID"]

body = DatadogAPIClient::V2::CaseCommentRequest.new({
  data: DatadogAPIClient::V2::CaseComment.new({
    attributes: DatadogAPIClient::V2::CaseCommentAttributes.new({
      comment: "Hello World !",
    }),
    type: DatadogAPIClient::V2::CaseResourceType::CASE,
  }),
})
p api_instance.comment_case(CASE_ID, body)

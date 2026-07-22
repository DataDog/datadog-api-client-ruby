# Update case comment returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

body = DatadogAPIClient::V2::CaseUpdateCommentRequest.new({
  data: DatadogAPIClient::V2::CaseUpdateComment.new({
    attributes: DatadogAPIClient::V2::CaseUpdateCommentAttributes.new({
      comment: "Updated comment text",
    }),
    type: DatadogAPIClient::V2::CaseResourceType::CASE,
  }),
})
p api_instance.update_case_comment("case_id", "cell_id", body)

# Update case status returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

# there is a valid "case" in the system
CASE_ID = ENV["CASE_ID"]

body = DatadogAPIClient::V2::CaseUpdateStatusRequest.new({
  data: DatadogAPIClient::V2::CaseUpdateStatus.new({
    attributes: DatadogAPIClient::V2::CaseUpdateStatusAttributes.new({
      status: DatadogAPIClient::V2::CaseStatus::IN_PROGRESS,
    }),
    type: DatadogAPIClient::V2::CaseResourceType::CASE,
  }),
})
p api_instance.update_status(CASE_ID, body)

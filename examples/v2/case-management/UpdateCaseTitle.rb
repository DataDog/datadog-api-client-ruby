# Update case title returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

# there is a valid "case" in the system
CASE_ID = ENV["CASE_ID"]

body = DatadogAPIClient::V2::CaseUpdateTitleRequest.new({
  data: DatadogAPIClient::V2::CaseUpdateTitle.new({
    attributes: DatadogAPIClient::V2::CaseUpdateTitleAttributes.new({
      title: "[UPDATED] Memory leak investigation on API",
    }),
    type: DatadogAPIClient::V2::CaseResourceType::CASE,
  }),
})
p api_instance.update_case_title(CASE_ID, body)

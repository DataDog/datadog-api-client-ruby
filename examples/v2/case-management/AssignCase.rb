# Assign case returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

# there is a valid "case" in the system
CASE_ID = ENV["CASE_ID"]

# there is a valid "user" in the system
USER_DATA_ID = ENV["USER_DATA_ID"]

body = DatadogAPIClient::V2::CaseAssignRequest.new({
  data: DatadogAPIClient::V2::CaseAssign.new({
    attributes: DatadogAPIClient::V2::CaseAssignAttributes.new({
      assignee_id: USER_DATA_ID,
    }),
    type: DatadogAPIClient::V2::CaseResourceType::CASE,
  }),
})
p api_instance.assign_case(CASE_ID, body)

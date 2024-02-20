# Update case priority returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

# there is a valid "case" in the system
CASE_ID = ENV["CASE_ID"]

body = DatadogAPIClient::V2::CaseUpdatePriorityRequest.new({
  data: DatadogAPIClient::V2::CaseUpdatePriority.new({
    attributes: DatadogAPIClient::V2::CaseUpdatePriorityAttributes.new({
      priority: DatadogAPIClient::V2::CasePriority::P3,
    }),
    type: DatadogAPIClient::V2::CaseResourceType::CASE,
  }),
})
p api_instance.update_priority(CASE_ID, body)

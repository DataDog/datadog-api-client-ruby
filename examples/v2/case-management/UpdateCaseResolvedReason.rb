# Update case resolved reason returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

body = DatadogAPIClient::V2::CaseUpdateResolvedReasonRequest.new({
  data: DatadogAPIClient::V2::CaseUpdateResolvedReason.new({
    attributes: DatadogAPIClient::V2::CaseUpdateResolvedReasonAttributes.new({
      security_resolved_reason: "FALSE_POSITIVE",
    }),
    type: DatadogAPIClient::V2::CaseResourceType::CASE,
  }),
})
p api_instance.update_case_resolved_reason("case_id", body)

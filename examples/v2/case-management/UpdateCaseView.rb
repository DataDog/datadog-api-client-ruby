# Update a case view returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

body = DatadogAPIClient::V2::CaseViewUpdateRequest.new({
  data: DatadogAPIClient::V2::CaseViewUpdate.new({
    attributes: DatadogAPIClient::V2::CaseViewUpdateAttributes.new({}),
    type: DatadogAPIClient::V2::CaseViewResourceType::VIEW,
  }),
})
p api_instance.update_case_view("view_id", body)

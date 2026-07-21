# Create a case view returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

body = DatadogAPIClient::V2::CaseViewCreateRequest.new({
  data: DatadogAPIClient::V2::CaseViewCreate.new({
    attributes: DatadogAPIClient::V2::CaseViewCreateAttributes.new({
      name: "Open bugs",
      project_id: "e555e290-ed65-49bd-ae18-8acbfcf18db7",
      query: "status:open type:bug",
    }),
    type: DatadogAPIClient::V2::CaseViewResourceType::VIEW,
  }),
})
p api_instance.create_case_view(body)

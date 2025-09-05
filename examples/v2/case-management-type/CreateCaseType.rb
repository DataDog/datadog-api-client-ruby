# Create a case type returns "CREATED" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementTypeAPI.new

body = DatadogAPIClient::V2::CaseTypeCreateRequest.new({
  data: DatadogAPIClient::V2::CaseTypeCreate.new({
    attributes: DatadogAPIClient::V2::CaseTypeResourceAttributes.new({
      description: "Investigations done in case management",
      emoji: "👑",
      name: "Investigation",
    }),
    type: DatadogAPIClient::V2::CaseTypeResourceType::CASE_TYPE,
  }),
})
p api_instance.create_case_type(body)

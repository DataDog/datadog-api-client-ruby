# Create investigation notebook for case returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

body = DatadogAPIClient::V2::CaseInvestigationNotebookCreateRequest.new({
  data: DatadogAPIClient::V2::CaseInvestigationNotebookCreateData.new({
    type: DatadogAPIClient::V2::CaseInvestigationNotebookResourceType::NOTEBOOK,
  }),
})
api_instance.create_case_notebook("case_id", body)

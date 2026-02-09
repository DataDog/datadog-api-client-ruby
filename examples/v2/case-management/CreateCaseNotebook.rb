# Create investigation notebook for case returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_case_notebook".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

body = DatadogAPIClient::V2::NotebookCreateRequest.new({
  data: DatadogAPIClient::V2::NotebookCreateData.new({
    type: DatadogAPIClient::V2::NotebookResourceType::NOTEBOOK,
  }),
})
api_instance.create_case_notebook("case_id", body)

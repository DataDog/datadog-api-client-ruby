# Delete a case type returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementTypeAPI.new
api_instance.delete_case_type("case_type_id")

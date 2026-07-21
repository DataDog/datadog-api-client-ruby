# Delete a case view returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new
api_instance.delete_case_view("view_id")

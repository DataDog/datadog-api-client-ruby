# Get a case view returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new
p api_instance.get_case_view("view_id")

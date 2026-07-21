# List project favorites returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new
p api_instance.list_user_case_project_favorites()

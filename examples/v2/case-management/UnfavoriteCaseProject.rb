# Unfavorite a project returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new
api_instance.unfavorite_case_project("project_id")

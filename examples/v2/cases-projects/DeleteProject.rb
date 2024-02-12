# Remove a project returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CasesProjectsAPI.new
api_instance.delete_project("project_id")

# Get all projects returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CasesProjectsAPI.new
p api_instance.get_projects()

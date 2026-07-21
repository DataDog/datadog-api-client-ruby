# Remove Jira issue link from case returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new
api_instance.unlink_jira_issue("case_id")

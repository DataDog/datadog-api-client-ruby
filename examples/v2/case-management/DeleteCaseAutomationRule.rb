# Delete an automation rule returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new
api_instance.delete_case_automation_rule("project_id", "rule_id")

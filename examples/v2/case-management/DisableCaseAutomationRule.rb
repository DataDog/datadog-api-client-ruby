# Disable an automation rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new
p api_instance.disable_case_automation_rule("project_id", "rule_id")

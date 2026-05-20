# Delete an automation rule returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_case_automation_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new
api_instance.delete_case_automation_rule("project_id", "rule_id")

# Get an automation rule returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new
p api_instance.get_case_automation_rule("project_id", "rule_id")

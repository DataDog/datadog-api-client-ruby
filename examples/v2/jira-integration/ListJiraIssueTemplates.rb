# List Jira issue templates returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_jira_issue_templates".to_sym] = true
end
api_instance = DatadogAPIClient::V2::JiraIntegrationAPI.new
p api_instance.list_jira_issue_templates()

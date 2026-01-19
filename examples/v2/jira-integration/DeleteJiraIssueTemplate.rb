# Delete Jira issue template returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_jira_issue_template".to_sym] = true
end
api_instance = DatadogAPIClient::V2::JiraIntegrationAPI.new
api_instance.delete_jira_issue_template("change-uuid")

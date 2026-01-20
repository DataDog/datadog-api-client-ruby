# Get Jira issue template returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_jira_issue_template".to_sym] = true
end
api_instance = DatadogAPIClient::V2::JiraIntegrationAPI.new
p api_instance.get_jira_issue_template("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d")

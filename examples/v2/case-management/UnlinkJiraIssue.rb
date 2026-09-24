# Remove Jira issue link from case returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new
api_instance.unlink_jira_issue("case_id")

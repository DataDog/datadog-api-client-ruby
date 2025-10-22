# Remove the assignee of an issue returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ErrorTrackingAPI.new

# there is a valid "issue" in the system
ISSUE_ID = ENV["ISSUE_ID"]
api_instance.delete_issue_assignee(ISSUE_ID)

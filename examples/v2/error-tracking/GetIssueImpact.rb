# Get the impact of an error tracking issue returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.get_issue_impact".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ErrorTrackingAPI.new

# there is a valid "issue" in the system
ISSUE_ID = ENV["ISSUE_ID"]
p api_instance.get_issue_impact(ISSUE_ID, 1635333071000, 1636629071000)

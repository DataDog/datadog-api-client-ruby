# Snooze an issue returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.snooze_issue".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ErrorTrackingAPI.new

# there is a valid "issue" in the system
ISSUE_ID = ENV["ISSUE_ID"]

body = DatadogAPIClient::V2::IssueSnoozeRequest.new({
  data: DatadogAPIClient::V2::IssueSnoozeRequestData.new({
    attributes: DatadogAPIClient::V2::IssueSnoozeRequestDataAttributes.new({
      condition: DatadogAPIClient::V2::IssueWatchCondition.new({
        kind: DatadogAPIClient::V2::IssueWatchConditionKind::ELAPSED_TIME,
        duration: "168h",
      }),
    }),
    id: ISSUE_ID,
    type: DatadogAPIClient::V2::IssueSnoozeRequestDataType::ERROR_TRACKING_ISSUE,
  }),
})
p api_instance.snooze_issue(ISSUE_ID, body)

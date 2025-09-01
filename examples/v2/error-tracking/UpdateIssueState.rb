# Update the state of an issue returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ErrorTrackingAPI.new

# there is a valid "issue" in the system
ISSUE_ID = ENV["ISSUE_ID"]

body = DatadogAPIClient::V2::IssueUpdateStateRequest.new({
  data: DatadogAPIClient::V2::IssueUpdateStateRequestData.new({
    attributes: DatadogAPIClient::V2::IssueUpdateStateRequestDataAttributes.new({
      state: DatadogAPIClient::V2::IssueState::RESOLVED,
    }),
    id: ISSUE_ID,
    type: DatadogAPIClient::V2::IssueUpdateStateRequestDataType::ERROR_TRACKING_ISSUE,
  }),
})
p api_instance.update_issue_state(ISSUE_ID, body)

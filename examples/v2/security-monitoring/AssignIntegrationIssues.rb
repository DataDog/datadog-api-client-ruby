# Assign or un-assign Jira issues to security findings returns "Accepted" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.assign_integration_issues".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::IntegrationAssignmentRequest.new({
  data: DatadogAPIClient::V2::IntegrationAssignmentDataRequest.new({
    attributes: DatadogAPIClient::V2::IntegrationAssignmentDataAttributesRequest.new({
      action: DatadogAPIClient::V2::IntegrationAssignmentDataAttributesRequestAction::ASSIGN,
      assignment: DatadogAPIClient::V2::IntegrationAssignmentDataAttributesRequestAssignment.new({
        jira: {
          "https://jira.example.com/browse/SEC-123" => [
            "MDBjMzdhYzgyNGZkZGJiZmY0OGNmYjNiMWQ2ODY0YmR-OTc0YjMzNjM1Y2UyODA2YTEyNWQxYmNkZjhmODllNzg=",
          ],
        },
      }),
      type: DatadogAPIClient::V2::IntegrationAssignmentDataAttributesRequestType::FINDINGS,
    }),
    id: "some_id",
    type: DatadogAPIClient::V2::IntegrationAssignmentType::ISSUE_ASSIGNMENT,
  }),
})
p api_instance.assign_integration_issues(body)
